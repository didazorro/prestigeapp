import 'package:flutter/material.dart';

import '../../../../common/config.dart';
import '../../../../common/constants.dart';
import '../../../../widgets/common/flux_image.dart';
import 'store_grid_style_layout.dart';

class GridStores extends StatelessWidget {
  final String? searchName;

  int get gridCountVendor => kVendorConfig.gridCountVendor;

  const GridStores({
    this.searchName,
  });

  @override
  Widget build(BuildContext context) {
    return StoreGridStyleLayout(
      countVendor: gridCountVendor,
      childAspectRatio: 1,
      searchName: searchName ?? '',
      itemBuilder: (store, index) {
        final bannerUrl = store.banner ?? kDefaultStoreImage;

        return LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: Container(
                width: constraints.maxWidth,
                margin:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                child: Column(
                  children: <Widget>[
                    FluxImage(
                        imageUrl: bannerUrl,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover),
                    const SizedBox(height: 8.0),
                    Text(
                      store.name!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
