import 'package:flutter/cupertino.dart';

import '../../generated/l10n.dart';

class SliverEmptyData extends StatelessWidget {
  const SliverEmptyData({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: Text(S.of(context).noData),
      ),
    );
  }
}
