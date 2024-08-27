import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/generated/l10n.dart';
import 'package:fstore/models/entities/product.dart';
import 'package:fstore/models/user_model.dart';
import 'package:provider/provider.dart';

import '../models/info_item.dart';
import '../services/b2bking_service_mixin.dart';
import '../services/index.dart';

class InformationTable extends StatefulWidget {
  const InformationTable({super.key, required this.product});
  final Product product;

  @override
  State<InformationTable> createState() => _InformationTableState();
}

class _InformationTableState extends State<InformationTable>
    with B2BKingServiceMixin {
  final _services = B2BKingServices();

  List<B2BKingInfoItem>? _infoTable;

  @override
  void initState() {
    super.initState();
    if (kAdvanceConfig.b2bKingConfig.enabled == true) {
      Future.delayed(Duration.zero, () async {
        try {
          final user = Provider.of<UserModel>(context, listen: false).user;
          _infoTable =
              await _services.getInfoTable(widget.product, token: user?.cookie);
          setState(() {});
        } catch (_) {}
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_infoTable?.isEmpty ?? true) return const SizedBox();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Text(
          S.of(context).informationTable.toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 5),
        const Divider(),
        ...?_infoTable?.map((e) => _renderItem(e))
      ],
    );
  }

  Widget _renderItem(B2BKingInfoItem item) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Text(
                item.label?.toString() ?? '',
                style: Theme.of(context).textTheme.titleMedium,
              )),
          Expanded(
              flex: 1,
              child: Text(
                item.text?.toString() ?? '',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
