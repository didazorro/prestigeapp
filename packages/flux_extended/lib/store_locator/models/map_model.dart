// ignore_for_file: depend_on_referenced_packages

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:fstore/models/entities/prediction.dart';
import 'package:fstore/models/mixins/map_mixin.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../services/index.dart';
import 'store.dart';

enum MapModelState { loading, loaded }

class MapModel extends ChangeNotifier with MapMixin {
  List<Store> stores = [];
  final _services = StoreLocatorServices();
  MapModelState state = MapModelState.loading;

  MapModel() {
    currentUserLocation = CameraPosition(
      target: const LatLng(
        0.0,
        0.0,
      ),
      zoom: zoom,
    );
    getStores();
  }

  void _updateState(state) {
    this.state = state;
    notifyListeners();
  }

  void _updateRadius(double radius) {
    super.updateRadius(radius);
    notifyListeners();
  }

  void getStores({double? radius, bool? showAll}) {
    if (radius != null) {
      _updateRadius(radius);
    }
    EasyDebounce.debounce('getStores', const Duration(milliseconds: 500),
        () async {
      if (state != MapModelState.loading) {
        _updateState(MapModelState.loading);
      }
      markers.clear();
      stores.clear();
      Store? firstStore;
      var list = await _services.getStores(
          latitude: currentLocation?.lat,
          longitude: currentLocation?.long,
          radius: this.radius,
          showAll: showAll);
      stores.addAll(list);
      for (var element in stores) {
        if (double.tryParse(element.latitude ?? '') != null &&
            double.tryParse(element.longitude ?? '') != null) {
          firstStore ??= element;
          markers.add(
            Marker(
              markerId: MarkerId('map-${element.id}'),
              infoWindow: InfoWindow(
                title: '',
                onTap: () {},
              ),
              position: LatLng(double.tryParse(element.latitude!) ?? 0,
                  double.tryParse(element.longitude!) ?? 0),
            ),
          );
        }
      }
      if (firstStore != null) {
        currentUserLocation = CameraPosition(
          target: LatLng(double.tryParse(firstStore.latitude!) ?? 0,
              double.tryParse(firstStore.longitude!) ?? 0),
          zoom: zoom,
        );
      }
      _updateState(MapModelState.loaded);
    });
  }

  void onPageChange(Store store) {
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(double.tryParse(store.latitude!) ?? 0,
            double.tryParse(store.longitude!) ?? 0),
        zoom: zoom,
      )),
    );
    notifyListeners();
  }

  @override
  void updateCurrentLocation(Prediction prediction) {
    super.updateCurrentLocation(prediction);
    getStores();
  }

  void showAllStores() {
    currentLocation = null;
    getStores(showAll: true);
  }
}
