// ignore_for_file: depend_on_referenced_packages

import 'package:carousel_slider_plus/carousel_slider_plus.dart' as carousel;
import 'package:flutter/material.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/common/tools/image_resize.dart';
import 'package:fstore/models/app_model.dart';
import 'package:fstore/routes/flux_navigate.dart';
import 'package:fstore/screens/common/google_map_mixin.dart';
import 'package:fstore/widgets/html/index.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:inspireui/widgets/platform_error/platform_error.dart';
import 'package:provider/provider.dart';

import '../models/map_model.dart';
import '../models/store.dart';
import 'store_products_screen.dart';

class StoresMapView extends StatefulWidget {
  const StoresMapView({super.key});

  @override
  State<StoresMapView> createState() => _StoresMapViewState();
}

class _StoresMapViewState extends State<StoresMapView> with GoogleMapMixin {
  void _onMapCreated(GoogleMapController controller, MapModel mapModel) async {
    mapModel.mapController = controller;
  }

  Widget _buildCarousel(width, stores, MapModel mapModel) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: carousel.CarouselSlider(
          items: List.generate(stores.length, (index) {
            return StoreItem(
                store: stores[index], width: width * 0.8, height: width * 0.4);
          }),
          options: carousel.CarouselOptions(
            onPageChanged: (int index, _) =>
                mapModel.onPageChange(stores[index]),
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
        return Consumer<MapModel>(
          builder: (context, mapModel, _) {
            if (mapModel.markers.isEmpty) return const SizedBox();
            return Stack(
              children: <Widget>[
                SizedBox(
                  width: width,
                  height: MediaQuery.of(context).size.height,
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: mapModel.currentUserLocation,
                    myLocationEnabled: false,
                    myLocationButtonEnabled: false,
                    onMapCreated: (controller) =>
                        _onMapCreated(controller, mapModel),
                    style: getMapStyle(
                        isDarkMode: Provider.of<AppModel>(context).darkTheme),
                    markers: mapModel.markers,
                    circles: mapModel.circles,
                    compassEnabled: false,
                    zoomControlsEnabled: false,
                    onCameraMove: mapModel.onGeoChanged,
                  ),
                ),
                if (mapModel.state == MapModelState.loaded)
                  _buildCarousel(
                      constraints.maxWidth,
                      mapModel.stores
                          .where((element) =>
                              (double.tryParse(element.latitude ?? '') !=
                                      null &&
                                  double.tryParse(element.longitude ?? '') !=
                                      null))
                          .toList(),
                      mapModel),
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
        FluxNavigate.push(
          MaterialPageRoute(
            builder: (context) => StoreProductsScreen(
              store: store,
            ),
          ),
          context: context,
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
                  StoreItemContactInfo(
                      icon: Icons.phone, label: store.phone ?? ''),
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
