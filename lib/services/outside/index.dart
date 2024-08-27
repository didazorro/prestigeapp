import 'package:flutter/material.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../models/entities/product.dart';
import 'shah_service.dart';

enum Service { shah }

class OutsideService {
  static Map get _service => Configurations.outsideService ?? {};
  static bool get _shahEnable => _service[Service.shah.name] == true;

  static Widget? _widgetFromWidgets(List<Widget> widgets) {
    if (widgets.isEmpty) {
      return null;
    }
    if (widgets.length == 1) {
      return widgets.first;
    }
    return Column(children: widgets);
  }

  static OutsideService init() {
    if (_shahEnable) {
      ShahService.init();
    }
    return OutsideService();
  }

  static Widget? dynamicLayout(Map config) {
    var widgets = <Widget>[];
    if (_shahEnable) {
      var widget = ShahService.dynamicLayout(config);
      if (widget != null) {
        widgets.add(widget);
      }
    }
    return _widgetFromWidgets(widgets);
  }

  static Widget? settingItemWidget(String type, {SettingItemStyle? cardStyle}) {
    var widgets = <Widget>[];
    if (_shahEnable) {
      var widget = ShahService.settingItemWidget(type, style: cardStyle?.name);
      if (widget != null) {
        widgets.add(widget);
      }
    }
    return _widgetFromWidgets(widgets);
  }

  static Widget? subProductCardInfoWidget(Product product) {
    var widgets = <Widget>[];
    if (_shahEnable) {
      final value = product.outsideJson?[Service.shah.name];
      if (value is Map) {
        var widget = ShahService.subProductCardInfoWidget(value);
        if (widget != null) {
          widgets.add(widget);
        }
      }
    }
    return _widgetFromWidgets(widgets);
  }

  static Map<String, WidgetBuilder> routes() {
    var values = <String, WidgetBuilder>{};
    if (_shahEnable) {
      values = {...values, ...ShahService.routes()};
    }
    return values;
  }

  static Map? productJson(dynamic json) {
    var values = {};
    if (_shahEnable) {
      values = {Service.shah.name: ShahService.productJson(json)};
    }
    if (values.isNotEmpty) {
      return values;
    }
    return null;
  }
}
