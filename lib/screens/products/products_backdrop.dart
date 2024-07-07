import 'package:flutter/material.dart';

import '../../common/tools/tools.dart';
import '../../widgets/backdrop/backdrop.dart';
import '../../widgets/product/product_bottom_sheet.dart';

class ProductBackdrop extends StatelessWidget {
  final ExpandingBottomSheet? expandingBottomSheet;
  final Backdrop? backdrop;

  const ProductBackdrop({super.key, this.expandingBottomSheet, this.backdrop});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        backdrop!,
        Align(
          alignment: Tools.isRTL(context)
              ? Alignment.bottomLeft
              : Alignment.bottomRight,
          child: expandingBottomSheet,
        )
      ],
    );
  }
}
