import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shah_widgets/shah_widgets.dart';

import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/index.dart';
import '../../modules/dynamic_layout/index.dart';
import '../../screens/settings/widgets/setting_item/setting_item_widget.dart';
import '../index.dart';

class ShahService {
  static void init() {
    ShahWidgets.init(ShahFluxComponent());
  }

  static Widget? dynamicLayout(Map config) {
    return ShahWidgets.dynamicLayout(config);
  }

  static Widget? settingItemWidget(String type, {String? style}) {
    return ShahWidgets.settingItemWidget(type);
  }

  static Widget? subProductCardInfoWidget(Map value) {
    return ShahWidgets.subProductCardInfoWidget(value);
  }

  static Map<String, WidgetBuilder> routes() {
    return ShahWidgets.routes();
  }

  static Map? productJson(dynamic json) {
    return ShahWidgets.productJson(json);
  }
}

class ShahFluxComponent extends ShahComponent {
  @override
  String? cookie(BuildContext context) =>
      context.read<UserModel>().user?.cookie;

  @override
  String get domain => Services().api.domain;

  @override
  ShahTranslation get trans => ShahFluxTranslation();

  @override
  Widget headerView({String? headerText, VoidCallback? callback}) {
    return HeaderView(
      headerText: headerText,
      showSeeAll: true,
      callback: callback,
    );
  }

  @override
  Widget settingItemWidget({
    IconData? icon,
    String? title,
    Widget? trailing,
    Function()? onTap,
    String? style,
  }) {
    return SettingItemWidget(
      icon: icon,
      title: title,
      trailing: trailing,
      onTap: onTap,
      cardStyle: SettingItemStyle.fromString(style),
    );
  }

  @override
  Widget cookieSelectorBuilder({
    required Widget Function(BuildContext context, String? cookie) builder,
  }) {
    return Selector<UserModel, String?>(
      selector: (context, model) => model.user?.cookie,
      builder: (context, value, _) => builder(
        context,
        value,
      ),
    );
  }
}

class ShahFluxTranslation extends ShahTranslation {
  @override
  String ok(BuildContext context) => S.of(context).ok;
}
