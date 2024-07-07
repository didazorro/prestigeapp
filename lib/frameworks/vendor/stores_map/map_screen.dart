import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inspireui/inspireui.dart' show PlatformError, Skeleton;
import 'package:location/location.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/mixins/map_mixin.dart';
import '../../../models/vendor/store_model.dart';
import '../../../screens/common/app_bar_mixin.dart';
import '../../../screens/common/google_map_mixin.dart';
import '../../../widgets/map/header_map_widget.dart';
import '../../../widgets/map/radius_slider.dart';
import 'map_screen_model.dart';
import 'store_banner.dart';

/// Map Screen
class MapScreen extends StatefulWidget {
  const MapScreen();

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen>
    with AppBarMixin, GoogleMapMixin, MapMixin {
  final kDefaultZoom = 16.0;

  void _onMapCreated(GoogleMapController controller, MapModel mapModel) async {
    mapModel.mapController = controller;
  }

  void _moveToStore(Store store, MapModel mapModel) {
    mapModel.mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(store.lat!, store.long!), zoom: kDefaultZoom),
      ),
    );
  }

  Future<bool> requestLocation() async {
    var location = Location();

    bool serviceEnabled;

    serviceEnabled = await location.serviceEnabled();

    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return false;
      }
    }

    var allow = await location.hasPermission();
    if (allow == PermissionStatus.denied) {
      allow = await location.requestPermission();
      if (allow != PermissionStatus.granted) {
        return false;
      }
    }

    return true;
  }

  void _moveToMyLocation(MapModel mapModel) {
    requestLocation();
    if (mapModel.userLocation != null) {
      mapModel.mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(mapModel.userLocation!.latitude!,
                  mapModel.userLocation!.longitude!),
              zoom: kDefaultZoom),
        ),
      );
    }
  }

  Widget _buildCarousel(double width, List<Store> stores, MapModel mapModel) {
    if (stores.isEmpty) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.grey.withOpacity(0.6),
          ),
          child: Text(
            S.of(context).noStoreNearby,
            style: const TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ),
      );
    }
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        width: width,
        height: width * 0.5,
        padding: const EdgeInsets.only(bottom: 20, top: 10),
        child: Swiper(
          key: const Key('vendors'),
          loop: false,
          viewportFraction: 0.6,
          scale: 0.8,
          itemBuilder: (context, index) {
            final store = stores[index];
            if (store.lat == null || store.long == null) {
              return const SizedBox();
            }
            return StoreBanner(
              store: store,
              width: width,
              moveToStore: () => _moveToStore(store, mapModel),
            );
          },
          itemCount: stores.length,
          onIndexChanged: (index) {
            if (!kVendorConfig.showAllVendorMarkers) {
              mapModel.markers.clear();
              mapModel.markers.add(Marker(
                  markerId: MarkerId('${stores[index].id}'),
                  infoWindow:
                      InfoWindow(title: stores[index].name, onTap: () {}),
                  position: LatLng(stores[index].lat!, stores[index].long!)));
              setState(() {});
            }
          },
        ),
      ),
    );
  }

  Widget _buildEmptyCarousel(width) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        width: width,
        height: width * 0.5,
        padding: const EdgeInsets.only(bottom: 20, top: 10),
        child: Swiper(
          key: const Key('empty'),
          loop: false,
          viewportFraction: 0.6,
          scale: 0.8,
          itemBuilder: (context, index) {
            return Skeleton(
              width: width * 0.2,
              height: width * 0.5,
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    final canPop = parentRoute?.canPop ?? false;
    if (!isMobile) {
      return const PlatformError();
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;
        return renderScaffold(
          disableSafeArea: true,
          routeName: RouteList.map,
          resizeToAvoidBottomInset: false,
          child: ChangeNotifierProvider<MapModel>(
            create: (context) => MapModel(),
            child: Consumer<MapModel>(
              builder: (context, mapModel, _) {
                var isLoading = mapModel.viewState == ViewState.loading;
                return Stack(
                  children: <Widget>[
                    if (mapModel.userLocation != null)
                      SizedBox(
                        width: width,
                        height: MediaQuery.of(context).size.height,
                        child: GoogleMap(
                          zoomControlsEnabled: false,
                          mapType: MapType.normal,
                          myLocationEnabled: true,
                          myLocationButtonEnabled: false,
                          initialCameraPosition: CameraPosition(
                            target: LatLng(
                              mapModel.userLocation == null
                                  ? 0.0
                                  : mapModel.userLocation!.latitude ?? 0,
                              mapModel.userLocation == null
                                  ? 0.0
                                  : mapModel.userLocation!.longitude ?? 0,
                            ),
                            zoom: kDefaultZoom,
                          ),
                          onMapCreated: (controller) =>
                              _onMapCreated(controller, mapModel),
                          markers: mapModel.markers,
                          style: getMapStyle(),
                        ),
                      ),
                    if (mapModel.viewState == ViewState.loading)
                      _buildEmptyCarousel(width),
                    if (mapModel.viewState == ViewState.loaded)
                      _buildCarousel(
                        constraints.maxWidth,
                        mapModel.listStore,
                        mapModel,
                      ),
                    HeaderMapWidget(
                      addressController: mapModel.addressController,
                      addressFocusNode: mapModel.addressFocusNode,
                      canPop: canPop,
                      getAutocompletePlaces: mapModel.getAutocompletePlaces,
                      autocompletePlaces: mapModel.autocompletePlaces,
                      getLocationFromPlace: mapModel.getLocationFromPlace,
                      radiusSlider: RadiusSlider(
                        maxRadius: mapModel.maxRadius,
                        minRadius: mapModel.minRadius,
                        onCallBack: (val) =>
                            mapModel.getNearestStores(radius: val),
                        currentVal: mapModel.radius,
                        moveToCurrentPos: () => _moveToMyLocation(mapModel),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: EdgeInsetsDirectional.symmetric(
                          horizontal: 10,
                          vertical: mapModel.listStore.isNotEmpty || isLoading
                              ? width * 0.5
                              : 10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: mapModel.zoomIn,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                minimumSize: const Size(40, 40),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: mapModel.zoomOut,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                minimumSize: const Size(40, 40),
                              ),
                              child: Icon(
                                Icons.remove,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
