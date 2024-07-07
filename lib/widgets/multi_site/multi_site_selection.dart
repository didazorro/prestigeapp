import 'package:flutter/material.dart';

import '../../common/config.dart';
import '../../common/config/multi_site.dart';
import 'multi_site_item.dart';

class MultiSiteSelection extends StatelessWidget {
  const MultiSiteSelection(
      {super.key, this.enabled, this.selected, required this.onChanged});
  final bool? enabled;
  final MultiSiteConfig? selected;
  final Function(MultiSiteConfig) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Configurations.multiSiteConfigs
              ?.map(
                (e) => MultiSiteItem(
                  multiSiteConfig: e,
                  selected: selected?.name == e.name,
                  onTap: (MultiSiteConfig config) =>
                      enabled == true ? _selectSite(config) : null,
                ),
              )
              .toList() ??
          [],
    );
  }

  void _selectSite(MultiSiteConfig config) {
    onChanged(config);
  }
}
