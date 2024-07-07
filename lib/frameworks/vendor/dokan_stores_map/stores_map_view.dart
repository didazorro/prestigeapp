import 'package:carousel_slider/carousel_slider.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:inspireui/widgets/platform_error/platform_error.dart';
import 'package:provider/provider.dart';

import '../../../common/constants.dart';
import '../../../common/tools/image_resize.dart';
import '../../../models/app_model.dart';
import '../../../models/entities/store/store.dart';
import '../../../models/entities/store_arguments.dart';
import '../../../screens/common/google_map_mixin.dart';
import '../../../widgets/html/index.dart';
import 'dokan_stores_model.dart';

class StoresMapView extends StatefulWidget {
  const StoresMapView({super.key});

  @override
  State<StoresMapView> createState() => _StoresMapViewState();
}

class _StoresMapViewState extends State<StoresMapView> with GoogleMapMixin {
  late GoogleMapController _controller;
  final CarouselController _carouselController = CarouselController();
  void _onMapCreated(
      GoogleMapController controller, DokanStoresModel mapModel) async {
    _controller = controller;
  }

  Set<Marker> _getMarkers(DokanStoresModel mapModel) {
    var markers = <Marker>{};
    (mapModel.mapStores ?? [])
        .where((element) => element.lat != null && element.long != null)
        .forEachIndexed((int index, Store element) {
      markers.add(
        Marker(
          onTap: () {
            _carouselController.animateToPage(index,
                duration: const Duration(milliseconds: 100),
                curve: Curves.fastEaseInToSlowEaseOut);
          },
          markerId: MarkerId('map-${element.id}'),
          infoWindow: InfoWindow(
            title: element.name,
          ),
          position: LatLng(element.lat!, element.long!),
        ),
      );
    });

    return markers;
  }

  Widget _buildCarousel(width, List<Store> stores, DokanStoresModel mapModel) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: CarouselSlider(
          carouselController: _carouselController,
          items: List.generate(stores.length, (index) {
            return StoreItem(
                store: stores[index], width: width * 0.8, height: width * 0.4);
          }),
          options: CarouselOptions(
            onPageChanged: (int index, _) {
              var store = stores[index];
              _controller.animateCamera(
                CameraUpdate.newCameraPosition(CameraPosition(
                    target: LatLng(store.lat!, store.long!), zoom: 15.0)),
              );
              _controller.showMarkerInfoWindow(MarkerId('map-${store.id}'));
            },
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            height: width * 0.4,
            enableInfiniteScroll: false,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!isMobile) return const PlatformError();

    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;
        return Consumer<DokanStoresModel>(
          builder: (context, mapModel, _) {
            return Stack(
              children: <Widget>[
                SizedBox(
                  width: width,
                  height: MediaQuery.of(context).size.height,
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(
                        target: LatLng(mapModel.mapStores!.first.lat ?? 0,
                            mapModel.mapStores!.first.long ?? 0),
                        zoom: 15.0),
                    myLocationEnabled: true,
                    myLocationButtonEnabled: false,
                    onMapCreated: (controller) => _onMapCreated(
                      controller,
                      mapModel,
                    ),
                    markers: _getMarkers(mapModel),
                    compassEnabled: false,
                    zoomControlsEnabled: false,
                    style: getMapStyle(
                      isDarkMode: Provider.of<AppModel>(context).darkTheme,
                    ),
                  ),
                ),
                _buildCarousel(
                    constraints.maxWidth, mapModel.mapStores ?? [], mapModel),
              ],
            );
          },
        );
      },
    );
  }
}

class StoreItem extends StatelessWidget {
  const StoreItem(
      {super.key,
      required this.width,
      required this.height,
      required this.store});
  final double width;
  final double height;
  final Store store;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          RouteList.storeDetail,
          arguments: StoreDetailArgument(store: store),
        );
      },
      child: Container(
        constraints: BoxConstraints(maxWidth: width),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                ImageResize(
                  url: store.image ?? '',
                  width: height * 0.6,
                  height: height * 0.6,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 5),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      HtmlUnescape().convert(store.name!),
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    HtmlWidget(
                      store.address ?? '',
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 12),
                    )
                  ],
                ))
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  if (store.showPhone)
                    StoreItemContactInfo(
                        icon: Icons.phone, label: store.phone ?? ''),
                  if (store.showEmail)
                    StoreItemContactInfo(
                        icon: Icons.email, label: store.email ?? ''),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StoreItemContactInfo extends StatelessWidget {
  const StoreItemContactInfo(
      {super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    if (label.isEmpty) return const SizedBox();
    return Row(
      children: [
        Icon(icon, size: 16),
        const SizedBox(width: 5),
        Expanded(
          child: Text(label,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 14)),
        ),
      ],
    );
  }
}
