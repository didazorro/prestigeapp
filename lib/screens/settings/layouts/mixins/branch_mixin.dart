import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/constants.dart';
import '../../../../generated/l10n.dart';
import '../../../../models/entities/branch.dart';
import '../../../../models/index.dart';
import '../../../../routes/flux_navigate.dart';
import '../../widgets/setting_item/setting_item_widget.dart';
import '../setting_builder_layout.dart';

mixin BranchMixin {
  DataSettingScreen get dataSettings;

  Widget get branchWidget {
    return Selector<BranchModel, (Branch?, List<Branch>)>(
      selector: (context, model) => (model.branchSelected, model.branches),
      builder: (BuildContext context, value, __) {
        if (value.$2.isEmpty) return const SizedBox();
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: dataSettings.cardStyle.paddingHorizontal,
          ),
          child: SettingItemWidget(
            cardStyle: dataSettings.cardStyle,
            onTap: () => FluxNavigate.pushNamed(
              RouteList.branchSelecter,
              forceRootNavigator: true,
              context: context,
            ),
            icon: Icons.menu,
            title: S.of(context).branch,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (value.$1?.name.isNotEmpty ?? false) ...[
                  Text(
                    '${value.$1?.name}',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                ],
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: kGrey600,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
