import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart';
import '../../../screens/settings/layouts/mixins/setting_action_mixin.dart';
import '../../../services/services.dart';
import '../web_layout_mixin.dart';

class MyAccountWidget extends StatelessWidget
    with WebLayoutMixin, SettingActionMixin {
  const MyAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserModel>(
      builder: (context, model, child) {
        final user = model.user;
        final loggedIn = model.loggedIn;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              _renderButton(
                S.of(context).home,
                onTap: () => Navigator.of(context).pushNamed(RouteList.home),
              ),
              if (loggedIn) ...[
                _renderButton(
                  S.of(context).account,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Center(
                          child: SizedBox(
                            width: 450,
                            height: MediaQuery.sizeOf(context).height * 0.8,
                            child:
                                Services().widget.renderUpdateProfileScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
                _renderButton(
                  S.of(context).myWishList,
                  onTap: () =>
                      Navigator.of(context).pushNamed(RouteList.wishlist),
                ),
                _renderButton(
                  S.of(context).myCart,
                  onTap: () => Navigator.of(context).pushNamed(RouteList.cart),
                ),
                _renderButton(
                  S.of(context).myOrder,
                  onTap: () => openMyOrder(context, user!),
                ),
              ],
              _renderButton(
                S.of(context).aboutUs,
                onTap: () => onTapOpenUrl(
                    context,
                    context.read<AppModel>().appConfig?.settings.aboutUS ??
                        kAdvanceConfig.aboutUSPageUrl),
              ),
            ].expand((e) => [e, const SizedBox(width: 20)]).toList()
              ..removeLast(),
          ),
        );
      },
    );
  }

  Widget _renderButton(String title, {Function()? onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: InkWell(
        hoverColor: Colors.transparent,
        onTap: onTap,
        child: Text(title),
      ),
    );
  }
}
