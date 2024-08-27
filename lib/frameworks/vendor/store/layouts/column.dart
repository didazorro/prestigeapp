import 'package:flutter/material.dart';

import '../../../../common/config.dart';
import '../../../../common/constants.dart';
import '../../../../common/tools/image_tools.dart';
import '../../../../widgets/common/flux_image.dart';
import 'store_grid_style_layout.dart';

class ColumnStores extends StatelessWidget {
  static const String type = 'column';
  final String? searchName;

  int get columnCountVendor => kVendorConfig.columnCountVendor;

  const ColumnStores({
    this.searchName,
  });

  @override
  Widget build(BuildContext context) {
    return StoreGridStyleLayout(
      countVendor: columnCountVendor,
      childAspectRatio: 0.75,
      searchName: searchName ?? '',
      itemBuilder: (store, index) {
        final bannerUrl = store.banner ?? kDefaultStoreImage;

        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            LayoutBuilder(builder: (context, constraints) {
              return FluxImage(
                imageUrl: bannerUrl,
                fit: ImageTools.boxFit(
                  kVendorConfig.bannerFit,
                  defaultValue: BoxFit.cover,
                ),
                width: constraints.maxWidth,
              );
            }),
            Container(
              color: const Color.fromRGBO(0, 0, 0, 0.4),
              child: Center(
                child: Text(
                  store.name ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
