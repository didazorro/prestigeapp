import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/generated/l10n.dart';
import 'package:fstore/models/entities/prediction.dart';
import 'package:fstore/routes/flux_navigate.dart';
import 'package:fstore/screens/common/app_bar_mixin.dart';
import 'package:fstore/widgets/common/flux_image.dart';
import 'package:fstore/widgets/html/index.dart';
import 'package:fstore/widgets/map/autocomplete_search_input.dart';
import 'package:fstore/widgets/map/radius_slider.dart';
import 'package:provider/provider.dart';

import '../models/map_model.dart';
import '../models/store.dart';
import 'store_products_screen.dart';
import 'stores_map_view.dart';

class StoreLocatorScreen extends StatefulWidget {
  const StoreLocatorScreen({super.key});

  @override
  State<StoreLocatorScreen> createState() => _StoreLocatorScreenState();
}

class _StoreLocatorScreenState extends State<StoreLocatorScreen>
    with AppBarMixin {
  bool _showMap = false;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MapModel>(
        create: (_) => MapModel()..getStores(showAll: true),
        child: Consumer<MapModel>(builder: (context, mapModel, _) {
          final disableMap =
              (isMacOS || isWindow || isFuchsia || mapModel.markers.isEmpty);
          return renderScaffold(
              backgroundColor: Theme.of(context).colorScheme.surface,
              routeName: RouteList.storeLocator,
              child: SafeArea(
                bottom: true,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: AutocompleteSearchInput(
                        hintText: S.of(context).storeLocatorSearchPlaceholder,
                        onChanged: (Prediction prediction) {
                          mapModel.updateCurrentLocation(prediction);
                        },
                        onCancel: () {
                          _showMap = false;
                          mapModel.showAllStores();
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: RadiusSlider(
                            maxRadius: mapModel.maxRadius,
                            minRadius: mapModel.minRadius,
                            onCallBack: (val) =>
                                mapModel.getStores(radius: val),
                            currentVal: mapModel.radius,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Theme.of(context).primaryColorLight),
                              borderRadius: BorderRadius.circular(5.0),
                              color: Theme.of(context).cardColor,
                            ),
                          ),
                        ),
                        if (!disableMap)
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _showMap = !_showMap;
                                });
                              },
                              icon: Icon(
                                  _showMap
                                      ? Icons.list_alt
                                      : Icons.map_outlined,
                                  color: Theme.of(context).primaryColor))
                      ],
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: mapModel.state == MapModelState.loading
                          ? Center(
                              child: kLoadingWidget(context),
                            )
                          : Stack(
                              children: [
                                const StoresMapView(),
                                if (!_showMap || mapModel.stores.isEmpty)
                                  Container(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    child: mapModel.stores.isNotEmpty
                                        ? ListView.builder(
                                            padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                                bottom: 15),
                                            itemCount: mapModel.stores.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return StoreItem(
                                                store: mapModel.stores[index],
                                              );
                                            })
                                        : Center(
                                            child: Text(S
                                                .of(context)
                                                .searchEmptyDataMessage),
                                          ),
                                  )
                              ],
                            ),
                    ),
                  ],
                ),
              ));
        }));
  }
}

class StoreItem extends StatelessWidget {
  const StoreItem({super.key, required this.store});
  final Store store;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: FluxImage(
                imageUrl: (store.image?.isNotEmpty ?? false)
                    ? store.image!
                    : kDefaultImage,
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  store.name ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 5),
                HtmlWidget(
                  store.address ?? '',
                  textStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: 12),
                ),
                if (store.phone?.isNotEmpty ?? false)
                  StoreContactItem(
                      label: S.of(context).phoneNumber, info: store.phone!),
                if (store.mobile?.isNotEmpty ?? false)
                  StoreContactItem(
                      label: S.of(context).mobile, info: store.mobile!),
                if (store.fax?.isNotEmpty ?? false)
                  StoreContactItem(label: S.of(context).fax, info: store.fax!),
                if (store.email?.isNotEmpty ?? false)
                  StoreContactItem(
                      label: S.of(context).email, info: store.email!),
                if (store.website?.isNotEmpty ?? false)
                  StoreContactItem(
                      label: S.of(context).website, info: store.website!),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class StoreContactItem extends StatelessWidget {
  const StoreContactItem({super.key, required this.label, required this.info});
  final String label;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: RichText(
        text: TextSpan(
          text: label,
          style: DefaultTextStyle.of(context)
              .style
              .copyWith(fontWeight: FontWeight.bold, fontSize: 11),
          children: <TextSpan>[
            const TextSpan(text: ': '),
            TextSpan(
                text: info,
                style: const TextStyle(fontWeight: FontWeight.normal)),
          ],
        ),
      ),
    );
  }
}
