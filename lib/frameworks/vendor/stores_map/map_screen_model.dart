import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:uuid/uuid.dart';

import '../../../common/config.dart';
import '../../../models/entities/prediction.dart';
import '../../../models/mixins/map_mixin.dart';
import '../../../models/vendor/store_model.dart';
import '../../../services/index.dart';

enum ViewState { init, loading, loaded }

class MapModel extends ChangeNotifier with MapMixin {
  ViewState viewState = ViewState.loading;
  final Services _services = Services();
  List<Store> listStore = [];
  LocationData? userLocation;
  List<Prediction> autocompletePlaces = [];
  final TextEditingController addressController = TextEditingController();
  final FocusNode addressFocusNode = FocusNode();
  var uuid;

  MapModel() {
    getUserLocation().then((value) {
      getListStore(lang: 'en', page: 1);
    });
    uuid = const Uuid().v4();
  }

  void setState(ViewState state) {
    viewState = state;
    notifyListeners();
  }

  Future<void> getUserLocation() async {
    var location = Location();
    userLocation = await location.getLocation();
  }

  void getListStore({lang, page}) async {
    setState(ViewState.loading);

    final predictionVal = Prediction();
    predictionVal.lat = userLocation!.latitude.toString();
    predictionVal.long = userLocation!.longitude.toString();
    listStore = await _services.api.getNearbyStores(
            prediction: predictionVal, radius: radius.toInt()) ??
        [];

    /// Check null in case of forgetting to add this attribute on future releases.
    if (kVendorConfig.showAllVendorMarkers) {
      markers.clear();
      if (listStore.isNotEmpty) {
        for (var store in listStore) {
          markers.add(
            Marker(
              markerId: MarkerId(store.id.toString()),
              infoWindow: InfoWindow(
                title: store.name,
                snippet: store.address,
                onTap: () {},
              ),
              position: LatLng(
                store.lat!,
                store.long!,
              ),
            ),
          );
        }
      }

      await mapController.animateCamera(
        CameraUpdate.newCameraPosition(CameraPosition(
            target: LatLng(double.parse(predictionVal.lat!),
                double.parse(predictionVal.long!)),
            zoom: zoom)),
      );
    } else {
      if (listStore.isNotEmpty) {
        final store = listStore[0];
        final latitude = store.lat!;
        final longitude = store.long!;
        markers.add(
          Marker(
            markerId: MarkerId(store.id.toString()),
            infoWindow: InfoWindow(
                title: store.name, snippet: store.address, onTap: () {}),
            position: LatLng(latitude, longitude),
          ),
        );

        await mapController.animateCamera(
          CameraUpdate.newCameraPosition(
              CameraPosition(target: LatLng(latitude, longitude), zoom: zoom)),
        );
      }
    }

    setState(ViewState.loaded);
  }

  void getAutocompletePlaces() {
    EasyDebounce.cancel('getAutocompletePlaces');
    EasyDebounce.debounce(
        'getAutocompletePlaces', const Duration(milliseconds: 300), () async {
      if (addressController.text != '') {
        autocompletePlaces = await _services.api
            .getAutoCompletePlaces(addressController.text, uuid);
        setState(ViewState.loaded);
      }
    });
  }

  void _updateRadius(double radius) {
    super.updateRadius(radius);
    notifyListeners();
  }

  void getNearestStores({double? radius}) {
    if (radius != null) {
      _updateRadius(radius);
    }
    EasyDebounce.debounce('getNearestStores', const Duration(milliseconds: 500),
        () async {
      if (viewState != ViewState.loading) {
        setState(ViewState.loading);
      }
      markers.clear();
      listStore.clear();
      if (currentLocation == null) {
        await getUserCurrentLocation();
        moveToCurrentPos();
      }

      var list = await _services.api.getNearbyStores(
              prediction: currentLocation!,
              radius: radius?.toInt() ?? 100,
              name: currentLocation?.description) ??
          [];

      listStore.addAll(list);
      for (var element in listStore) {
        if (element.lat != null && element.long != null) {
          markers.add(
            Marker(
              markerId: MarkerId('map-${element.id}'),
              infoWindow: InfoWindow(
                title: element.name,
                onTap: () {},
              ),
              position: LatLng(element.lat!, element.long!),
            ),
          );
        }
      }
      setState(ViewState.loaded);
    });
  }

  @override
  void updateCurrentLocation(Prediction prediction) {
    super.updateCurrentLocation(prediction);
    getNearestStores();
  }

  void getLocationFromPlace(int index) async {
    final prediction = autocompletePlaces[index];
    autocompletePlaces.clear();
    addressFocusNode.unfocus();
    setState(ViewState.loading);
    addressController.text = prediction.description ?? '';
    final predictionVal = await _services.api.getPlaceDetail(prediction, uuid);

    uuid = const Uuid().v4();
    listStore = await _services.api.getNearbyStores(
            prediction: predictionVal, radius: radius.toInt()) ??
        [];

    if (kVendorConfig.showAllVendorMarkers) {
      markers.clear();
      if (listStore.isNotEmpty) {
        for (var store in listStore) {
          markers.add(
            Marker(
              markerId: MarkerId(store.id.toString()),
              infoWindow: InfoWindow(
                  title: store.name, snippet: store.address, onTap: () {}),
              position: LatLng(
                store.lat!,
                store.long!,
              ),
            ),
          );
        }
      }
      await mapController.animateCamera(
        CameraUpdate.newCameraPosition(CameraPosition(
            target: LatLng(double.parse(predictionVal.lat!),
                double.parse(predictionVal.long!)),
            zoom: zoom)),
      );
    } else {
      if (listStore.isNotEmpty) {
        final store = listStore[0];
        final longitude = store.long!;
        final latitude = store.lat!;

        markers.add(
          Marker(
            markerId: MarkerId(store.id.toString()),
            infoWindow: InfoWindow(
                title: store.name, snippet: store.address, onTap: () {}),
            position: LatLng(latitude, longitude),
          ),
        );
        await mapController.animateCamera(
          CameraUpdate.newCameraPosition(
              CameraPosition(target: LatLng(latitude, longitude), zoom: zoom)),
        );
      }
    }

    setState(ViewState.loaded);
  }
}
