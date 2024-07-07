import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inspireui/utils/logs.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../models/index.dart';

mixin GoogleMapMixin<T extends StatefulWidget> on State<T> {
  /// This value only needs to be loaded once.
  /// So there is no need to reload it.
  static String? _darkMapStyleJson;
  static String? _lightMapStyleJson;

  GoogleMapController? controller;

  List<String> _darkMapStyleUrl = [];
  List<String> _lightMapStyleUrl = [];

  List<String> get darkMapStyleUrl => _darkMapStyleUrl;
  List<String> get lightMapStyleUrl => _lightMapStyleUrl;

  String? getMapStyle({bool? isDarkMode}) {
    var appModel = Provider.of<AppModel>(context, listen: false);
    if (isDarkMode ?? appModel.darkTheme) {
      return _darkMapStyleJson;
    } else {
      return _lightMapStyleJson;
    }
  }

  @override
  void initState() {
    super.initState();

    _loadMapStyles();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  Future _loadMapStyles() async {
    var lightUrl = Uri.parse(kGoogleApiKey.lightStyleUrl ?? '');

    _lightMapStyleUrl = lightUrl.queryParametersAll.containsKey('style')
        ? lightUrl.queryParametersAll['style']!
        : GoogleMapStyleParams.lightMapStyleParams;

    var darkUrl = Uri.parse(kGoogleApiKey.darkStyleUrl ?? '');

    _darkMapStyleUrl = darkUrl.queryParametersAll.containsKey('style')
        ? darkUrl.queryParametersAll['style']!
        : GoogleMapStyleParams.darkMapStyleParams;

    var isRefreshScreen = false;

    if (_lightMapStyleJson?.isEmpty ?? true) {
      try {
        _lightMapStyleJson = kGoogleApiKey.lightStyleJson ??
            await rootBundle.loadString('assets/map_styles/light.json');
        isRefreshScreen = true;
      } catch (e) {
        printError(e);
      }
    }

    if (_darkMapStyleJson?.isEmpty ?? true) {
      try {
        _darkMapStyleJson = kGoogleApiKey.darkStyleJson ??
            await rootBundle.loadString('assets/map_styles/dark.json');
        isRefreshScreen = true;
      } catch (e) {
        printError(e);
      }
    }

    if (isRefreshScreen) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        setState(() {});
      });
    }
  }

  List getMapStyleParams({isDarkMode}) {
    var appModel = Provider.of<AppModel>(context, listen: false);
    if (isDarkMode ?? appModel.darkTheme) {
      return darkMapStyleUrl;
    } else {
      return lightMapStyleUrl;
    }
  }
}

class GoogleMapStyleParams {
  static List getStyle(theme) {
    if (theme == Brightness.dark) {
      return darkMapStyleParams;
    } else {
      return lightMapStyleParams;
    }
  }

  static const lightMapStyleParams = [
    'visibility:on',
  ];

  static const darkMapStyleParams = [
    'visibility:on',
    'element:geometry|color:0x212121',
    'element:labels.icon|visibility:off',
    'element:labels.text.fill|color:0x757575',
    'element:labels.text.stroke|color:0x212121',
    'feature:administrative|element:geometry|color:0x757575',
    'feature:administrative.country|element:labels.text.fill|color:0x9e9e9e',
    'feature:administrative.land_parcel|visibility:off',
    'feature:administrative.locality|element:labels.text.fill|color:0xbdbdbd',
    'feature:poi|element:labels.text.fill|color:0x757575',
    'feature:poi.park|element:geometry|color:0x181818',
    'feature:poi.park|element:labels.text.fill|color:0x616161',
    'feature:poi.park|element:labels.text.stroke|color:0x1b1b1b',
    'feature:road|element:geometry.fill|color:0x2c2c2c',
    'feature:road|element:labels.text.fill|color:0x8a8a8a',
    'feature:road.arterial|element:geometry|color:0x373737',
    'feature:road.highway|element:geometry|color:0x3c3c3c',
    'feature:road.highway.controlled_access|element:geometry|color:0x4e4e4e',
    'feature:road.local|element:labels.text.fill|color:0x616161',
    'feature:transit|element:labels.text.fill|color:0x757575',
    'feature:water|element:geometry|color:0x000000',
    'feature:water|element:labels.text.fill|color:0x3d3d3d',
  ];
}
