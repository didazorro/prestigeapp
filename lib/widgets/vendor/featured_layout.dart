import 'package:flutter/material.dart';
import 'package:inspireui/widgets/skeleton_widget/skeleton_widget.dart';
import 'package:provider/provider.dart';

import '../../common/constants.dart';
import '../../common/tools.dart';
import '../../models/entities/store_arguments.dart';
import '../../models/vendor/store_model.dart';
import '../../modules/dynamic_layout/config/featured_vendor/featured_vendor_config.dart';
import '../../modules/dynamic_layout/helper/custom_physic.dart';
import '../../modules/dynamic_layout/helper/header_view.dart';
import '../../services/service_config.dart';
import '../../widgets/common/auto_silde_show.dart';
import '../../widgets/common/background_color_widget.dart';
import '../../widgets/common/flex_separated.dart';
import '../../widgets/common/flux_image.dart';
import '../../widgets/common/star_rating.dart';

class FeaturedLayout extends StatefulWidget {
  final FeaturedVendorConfig config;

  const FeaturedLayout({
    required this.config,
    super.key,
  });

  @override
  State<FeaturedLayout> createState() => _FeaturedLayoutState();
}

class _FeaturedLayoutState extends State<FeaturedLayout> {
  StoreModel get storeModel => Provider.of<StoreModel>(context, listen: false);
  FeaturedVendorConfig get config => widget.config;

  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then((_) {
      storeModel.getFeaturedStores(perPage: config.limit);
    });
  }

  Widget placeholder(Size size) {
    return Skeleton(
      width: size.width,
      height: size.height,
    );
  }

  Widget featuredItem({
    required Store store,
    required double width,
    int? column = 3,
  }) {
    final theme = Theme.of(context);
    final isTablet = Tools.isTablet(MediaQuery.of(context));

    var titleFontSize = isTablet ? 20.0 : (column == 2 ? 14.0 : 12.0);
    var ratingCountFontSize = isTablet ? 16.0 : 12.0;
    var starSize = isTablet ? 16.0 : 10.0;
    final image = store.image ?? kDefaultStoreImage;
    final name = store.name ?? '';
    final child = SizedBox(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: FluxImage(
              imageUrl: image,
              fit: ImageTools.boxFit(config.imageBoxfit),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Tools.getAlignment(config.alignment),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          if (config.showRating)
            Expanded(
              flex: 1,
              child: Align(
                alignment: Tools.getAlignment(config.alignment),
                child: SmoothStarRating(
                  allowHalfRating: true,
                  starCount: 5,
                  label: store.reviewCount?.isNotEmpty ?? false
                      ? Text(
                          '(${store.reviewCount})',
                          style: TextStyle(fontSize: ratingCountFontSize),
                        )
                      : null,
                  rating: store.rating,
                  size: starSize,
                  color: theme.primaryColor,
                  spacing: 0.0,
                ),
              ),
            ),
        ],
      ),
    );

    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RouteList.storeDetail,
          arguments: StoreDetailArgument(store: store),
        );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    var displayColumnCount = config.columnCount;
    final child = Selector<StoreModel, List<Store>?>(
      selector: (context, model) => model.lstFeaturedStores,
      builder: (context, stores, _) {
        if (!ServerConfig().isVendorType()) {
          return const SizedBox();
        }
        if (stores == null) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (config.name?.isNotEmpty ?? false)
                HeaderView(headerText: config.name),
              LayoutBuilder(builder: (context, constraints) {
                final widthCard = constraints.maxWidth / displayColumnCount -
                    5 * displayColumnCount;
                final heightCard = widthCard * 0.9;
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(10),
                  child: FlexSeparated.row(
                    separationSize: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      3,
                      (index) => placeholder(Size(widthCard, heightCard)),
                    ),
                  ),
                );
              }),
            ],
          );
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            if (config.name?.isNotEmpty ?? false)
              HeaderView(headerText: config.name),
            LayoutBuilder(
              builder: (context, constraints) {
                final widthCard = constraints.maxWidth / displayColumnCount -
                    5 * displayColumnCount;
                final heightCard = widthCard * 0.9;
                final body = Container(
                  height: heightCard * 1.2,
                  color: Colors.transparent,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: _scrollController,
                    padding: const EdgeInsets.all(10),
                    physics: config.isSnapping
                        ? CustomScrollPhysic(width: widthCard + 10)
                        : const ScrollPhysics(),
                    child: FlexSeparated.rowBuilder(
                      itemCount: stores.length,
                      separationSize: 10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      itemBuilder: (index) {
                        var store = stores[index];
                        return featuredItem(
                          store: store,
                          column: displayColumnCount,
                          width: widthCard,
                        );
                      },
                    ),
                  ),
                );

                return HandleAutoSlide.list(
                  enable: config.enableAutoSliding,
                  durationAutoSliding: config.durationAutoSliding,
                  numberOfItems: stores.length,
                  controller: _scrollController,
                  child: body,
                );
              },
            ),
          ],
        );
      },
    );

    return BackgroundColorWidget(
      enable: config.enableBackground,
      child: child,
    );
  }
}
