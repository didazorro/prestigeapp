import 'package:flutter/material.dart';

import '../../models/index.dart' show Product;
import '../../services/service_config.dart';
import '../../widgets/vendor/store_item.dart';

class VendorInfo extends StatefulWidget {
  final Product? product;

  const VendorInfo(this.product);
  @override
  State<VendorInfo> createState() => _VendorInfoState();
}

class _VendorInfoState extends State<VendorInfo> {
  @override
  Widget build(BuildContext context) {
    if (widget.product?.store == null || !ServerConfig().isVendorType()) {
      return Container();
    }

    return Column(
      children: <Widget>[
        const SizedBox(height: 15),
        StoreItem(store: widget.product?.store),
      ],
    );
  }
}
