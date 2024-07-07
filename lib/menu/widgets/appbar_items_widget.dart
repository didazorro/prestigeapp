import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../models/app_model.dart';
import '../../modules/dynamic_layout/config/app_config.dart';
import '../../widgets/common/flux_image.dart';
import '../../widgets/multi_site/multi_site_mixin.dart';
import 'appbar_item_widget.dart';

class AppBarItemsWidget extends StatelessWidget with MultiSiteMixin {
  const AppBarItemsWidget({
    super.key,
    this.items,
    this.showBottom = true,
    this.popButton,
    this.showSiteSelection = false,
  });

  final List<AppBarItemConfig>? items;
  final bool showBottom;
  final Widget? popButton;
  final bool showSiteSelection;

  @override
  Widget build(BuildContext context) {
    var widgets = items?.map<Widget>(
          (AppBarItemConfig item) {
            return AppBarItemWidget(
              item: item,
              showBottom: showBottom,
            );
          },
        ).toList() ??
        <Widget>[];

    var popBtn =
        popButton != null && Navigator.canPop(context) ? popButton : null;
    if (popBtn != null) {
      widgets.add(popBtn);
    }

    var enableMultiSite = Configurations.multiSiteConfigs?.isNotEmpty ?? false;
    var multiSiteIcon = Provider.of<AppModel>(context).multiSiteConfig?.icon;
    if (enableMultiSite && showSiteSelection) {
      widgets.add(Padding(
        padding: const EdgeInsets.only(right: 15),
        child: GestureDetector(
          onTap: () => showMultiSiteSelection(context),
          child: multiSiteIcon?.isEmpty ?? true
              ? const Icon(CupertinoIcons.globe)
              : FluxImage(
                  imageUrl: multiSiteIcon!,
                  width: 25,
                  height: 20,
                  fit: BoxFit.cover,
                ),
        ),
      ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: widgets,
    );
  }
}
