import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';
import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/extensions/extensions.dart';
import '../../../common/tools/navigate_tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/user_model.dart';
import '../../../modules/openai/model/openai_model.dart';
import '../../../routes/flux_navigate.dart';
import '../../../services/index.dart';
import 'setting_item/setting_item_user_info_widget.dart';
import 'setting_item/setting_item_widget.dart';

class SettingUserInfoWidget extends StatefulWidget {
  const SettingUserInfoWidget({
    super.key,
    required this.cartStyle,
    this.onTapLogout,
    this.paddingContent = const EdgeInsets.only(top: 10, bottom: 30),
  });
  final SettingItemStyle cartStyle;
  final void Function()? onTapLogout;
  final EdgeInsets paddingContent;

  @override
  State<SettingUserInfoWidget> createState() => _SettingUserInfoWidgetState();
}

class _SettingUserInfoWidgetState extends State<SettingUserInfoWidget> {
  void _handleUpdateProfile() async {
    final hasChangePassword = await FluxNavigate.pushNamed(
      RouteList.updateUser,
      context: context,
    ) as bool?;

    /// If change password with Shopify
    /// need to log out and log in again
    if (ServerConfig().isShopify && (hasChangePassword ?? false)) {
      await _showDialogLogout();
    }
  }

  /// Need to force log out when change the password for Shopify
  Future<void> _showDialogLogout() async {
    final confirmed = await context.showFluxDialogText(
      title: S.of(context).notice,
      body: S.of(context).needToLoginAgain,
      primaryAction: S.of(context).ok,
    );
    if (confirmed) {
      widget.onTapLogout?.call();
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    final decoration = widget.cartStyle.decorationCardItem(context);

    return ListenableProvider.value(
      value: Provider.of<UserModel>(context),
      child: Consumer<UserModel>(
        builder: (context, model, child) {
          final loggedIn = model.loggedIn;
          final user = (ServerConfig().isHaravan && loggedIn == false)
              ? null
              : model.user;

          return Padding(
            padding: widget.paddingContent,
            child: Column(
              children: [
                if (user != null && user.name != null)
                  SettingItemUserInfoWidget(
                    cardStyle: widget.cartStyle,
                    onTapUpdateProfile: _handleUpdateProfile,
                    user: user,
                  ),
                if (user == null && kLoginSetting.enable)
                  Container(
                    decoration: decoration,
                    child: SettingItemWidget(
                      showDivider: false,
                      icon: Icons.person,
                      title: S.of(context).login,
                      cardStyle: widget.cartStyle,
                      onTap: () {
                        if (!loggedIn) {
                          NavigateTools.navigateToLogin(context);
                          return;
                        }

                        Provider.of<UserModel>(context, listen: false).logout();
                        if (kLoginSetting.isRequiredLogin) {
                          NavigateTools.navigateToLogin(
                            App.fluxStoreNavigatorKey.currentContext!,
                            replacement: true,
                          );
                        }
                      },
                    ),
                  ),
                if (openAIConfig.enableInputKey)
                  Container(
                    decoration: decoration,
                    child: SettingItemWidget(
                      icon: Icons.vpn_key,
                      cardStyle: widget.cartStyle,
                      titleWidget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).manageApiKey,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: kGrey600,
                      ),
                      onTap: () {
                        context.showOpenAiKey();
                      },
                    ),
                  ),
                if (user != null) ...[
                  if (widget.cartStyle == SettingItemStyle.listTile)
                    SettingItemWidget(
                      colorCard: Theme.of(context).colorScheme.surface,
                      onTap: widget.onTapLogout,
                      showDivider: false,
                      cardStyle: widget.cartStyle,
                      icon: Icons.logout,
                      title: S.of(context).logout,
                    ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
