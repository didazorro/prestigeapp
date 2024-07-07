import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/prediction.dart';
import '../../../models/entities/store/store.dart';
import '../../../models/entities/store_arguments.dart';
import '../../../screens/common/app_bar_mixin.dart';
import '../../../widgets/common/flux_image.dart';
import '../../../widgets/html/index.dart';
import '../../../widgets/map/autocomplete_search_input.dart';
import '../../../widgets/map/radius_slider.dart';
import 'dokan_stores_model.dart';
import 'stores_map_view.dart';

class DokanStoresScreen extends StatefulWidget {
  const DokanStoresScreen({super.key});

  @override
  State<DokanStoresScreen> createState() => _DokanStoresScreenState();
}

class _DokanStoresScreenState extends State<DokanStoresScreen>
    with AppBarMixin {
  bool _showMap = false;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    final canPop = parentRoute?.canPop ?? false;

    return ChangeNotifierProvider<DokanStoresModel>(
        create: (_) => DokanStoresModel()..initStores(),
        child: Consumer<DokanStoresModel>(builder: (context, mapModel, _) {
          final disableMap = (isMacOS ||
              isWindow ||
              isFuchsia ||
              (mapModel.mapStores?.isEmpty ?? true));
          return renderScaffold(
              backgroundColor: Theme.of(context).colorScheme.surface,
              routeName: RouteList.map,
              child: SafeArea(
                bottom: true,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          if (canPop)
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: InkWell(
                                onTap: Navigator.of(context).pop,
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 3.0, left: 5.0),
                                  child: Icon(
                                    Icons.arrow_back,
                                    size: 22,
                                  ),
                                ),
                              ),
                            ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: Theme.of(context).primaryColorLight),
                                borderRadius: BorderRadius.circular(5.0),
                                color: Theme.of(context).cardColor,
                              ),
                              child: AutocompleteSearchInput(
                                hintText: S.of(context).searchingAddress,
                                onChanged: (Prediction prediction) {
                                  mapModel.refreshStore(prediction: prediction);
                                },
                                onCancel: () {
                                  _showMap = false;
                                  mapModel.initStores();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: RadiusSlider(
                            maxRadius: 5,
                            minRadius: 0,
                            onCallBack: (val) =>
                                mapModel.refreshStore(radius: val.toInt()),
                            currentVal: mapModel.radius.toDouble(),
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
                      child: Stack(
                        children: [
                          if (mapModel.mapStores?.isNotEmpty ?? false)
                            const StoresMapView(),
                          if (_showMap && mapModel.isLoading)
                            Center(
                              child: kLoadingWidget(context),
                            ),
                          if (!_showMap) _renderStores(mapModel)
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        }));
  }

  Widget _renderStores(DokanStoresModel mapModel) {
    if (mapModel.isLoading && (mapModel.stores?.isEmpty ?? true)) {
      return Center(
        child: kLoadingWidget(context),
      );
    }

    if (!mapModel.isLoading && (mapModel.stores?.isEmpty ?? true)) {
      return Center(
        child: Text(S.of(context).noData),
      );
    }
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: SmartRefresher(
        enablePullDown: true,
        enablePullUp: !mapModel.isEnd,
        controller: _refreshController,
        onRefresh: () {
          mapModel.refreshStore(
            onFinish: () {
              _refreshController.refreshCompleted();
            },
          );
        },
        onLoading: () {
          mapModel.loadStore(
            onFinish: () {
              _refreshController.loadComplete();
            },
          );
        },
        child: ListView.builder(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            itemCount: mapModel.stores?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return StoreItem(
                store: mapModel.stores![index],
              );
            }),
      ),
    );
  }
}

class StoreItem extends StatelessWidget {
  const StoreItem({super.key, required this.store});
  final Store store;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          RouteList.storeDetail,
          arguments: StoreDetailArgument(store: store),
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
                if ((store.phone?.isNotEmpty ?? false) && store.showPhone)
                  StoreContactItem(
                      label: S.of(context).phoneNumber, info: store.phone!),
                if ((store.email?.isNotEmpty ?? false) && store.showEmail)
                  StoreContactItem(
                      label: S.of(context).email, info: store.email!),
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
