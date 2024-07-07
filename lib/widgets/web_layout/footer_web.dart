import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/index.dart';
import '../../screens/settings/layouts/mixins/setting_action_mixin.dart';
import '../common/flux_image.dart';
import 'web_layout_mixin.dart';
import 'widgets/download_app_widget.dart';
import 'widgets/follow_social_widget.dart';
import 'widgets/my_account_widget.dart';

class FooterWeb extends StatefulWidget {
  const FooterWeb({super.key});

  @override
  State<FooterWeb> createState() => _FooterWebState();
}

class _FooterWebState extends State<FooterWeb>
    with WebLayoutMixin, SettingActionMixin {
  void _onTapOpenUrlWeb(String urlWeb) => onTapOpenUrl(context, urlWeb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Theme.of(context).primaryColor.withOpacity(0.1),
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 64.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (_, constraints) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                Navigator.of(context).pushNamed(RouteList.home);
                              },
                              child: FluxImage(
                                imageUrl: kLogoImage,
                                width: constraints.maxWidth * 0.2,
                              ),
                            ),
                          ),
                          const MyAccountWidget(),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Row(
                        children: [
                          FollowSocialWidget(
                            padding: EdgeInsets.zero,
                            title: const SizedBox(),
                            sizeIcon: 30,
                            onTap: _onTapOpenUrlWeb,
                            color: Theme.of(context)
                                .scaffoldBackgroundColor
                                .getColorBasedOnBackground,
                          ),
                          const Spacer(),
                          DownloadAppWidget(
                            onTap: _onTapOpenUrlWeb,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 11)
                    .copyWith(bottom: 10),
                child: Text(S.of(context).copyright),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () => onTapOpenUrl(
                      context,
                      context.read<AppModel>().appConfig?.settings.privacy ??
                          kAdvanceConfig.privacyPoliciesPageUrlOrId),
                  child: Text(
                    S.of(context).privacyTerms,
                    style: const TextStyle(),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
