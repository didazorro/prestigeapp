import 'dart:async';

import 'package:async/async.dart';
import 'package:location/location.dart';

import '../common/constants.dart';
import '../data/boxes.dart';

class LocationService {
  /// Make sure that if no error occurs, this timeout must be enough
  /// for the event to complete.
  /// If the timeout exceeds the service execution and is not completed,
  /// it means there is a problem with this event.
  /// You need to end the event to ensure the application operates normally.
  static const timeOutWating = Duration(seconds: 30);

  bool _serviceEnabled = false;

  LocationData? _locationData;
  LocationData? get locationData => _locationData;

  bool _canUseLocation = false;
  bool get canUseLocation => _canUseLocation;
  CancelableCompleter? loadingCompleter;

  Future<void> awaiting({Duration? timeout}) async {
    if (timeout != null && loadingCompleter != null) {
      unawaited(Future.delayed(timeout).then((value) {
        if (loadingCompleter!.operation.isCompleted == false) {
          loadingCompleter!.operation.cancel();
        }
      }));
    }

    await loadingCompleter?.operation.valueOrCancellation();
    return;
  }

  Future<void> init() async {
    if (_canUseLocation) {
      return;
    }
    await loadingCompleter?.operation.cancel();
    loadingCompleter = CancelableCompleter();
    loadingCompleter?.complete(requestPermission());
    await loadingCompleter?.operation.valueOrCancellation();
  }

  Future<void> requestPermission() async {
    try {
      _locationData = _getLocationFromCache();
      var permissionGranted = PermissionStatus.denied;
      final location = Location();
      _serviceEnabled = await location.serviceEnabled();

      if (!_serviceEnabled) {
        _serviceEnabled = await location.requestService();
        if (!_serviceEnabled) {
          return;
        }
      }

      permissionGranted = await location.hasPermission();

      if (permissionGranted == PermissionStatus.deniedForever) {
        return;
      }

      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          return;
        }
      }
      _locationData = await location.getLocation();
      if (_serviceEnabled &&
          _locationData != null &&
          (permissionGranted == PermissionStatus.granted ||
              permissionGranted == PermissionStatus.grantedLimited)) {
        _canUseLocation = true;
        _saveLocation();
      }
    } catch (err, trace) {
      printError(err, trace);
    }
  }

  LocationData? _getLocationFromCache() {
    var value = CacheBox().getCurrentLocationCache();
    if (value != null) {
      return LocationData.fromMap(value);
    }
    return null;
  }

  void _saveLocation() {
    if (_locationData != null) {
      var map = {
        'latitude': _locationData?.latitude,
        'longitude': _locationData?.longitude,
      };
      CacheBox().setCurrentLocationCache(map);
    }
  }
}
