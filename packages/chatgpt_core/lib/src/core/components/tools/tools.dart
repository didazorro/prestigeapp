import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/constant.dart';

class Tools {
  /// Generate random key
  static String randomString({length = 10}) {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    var rnd = Random(DateTime.now().microsecondsSinceEpoch);
    var result = '';
    for (var i = 0; i < length; i++) {
      result += chars[rnd.nextInt(chars.length)];
    }

    return result;
  }

  static Color textColorForBackground(Color backgroundColor) {
    if (ThemeData.estimateBrightnessForColor(backgroundColor) ==
        Brightness.dark) {
      return Colors.white;
    }

    return Colors.black;
  }

  static Future<void> launchURL(
    String? originUrl, {
    LaunchMode? mode,
  }) async {
    var url = prepareURL(originUrl);
    final uri = Uri.tryParse(url ?? '');
    if (mode == null && needToOpenExternalApp(url)) {
      mode = LaunchMode.externalApplication;
    }

    if (mode == LaunchMode.externalNonBrowserApplication &&
        uri != null &&
        !(await canLaunchUrl(uri))) {
      mode = LaunchMode.externalApplication;
    }

    if (url == null ||
        uri == null ||
        !(await launchUrl(uri, mode: mode ?? LaunchMode.platformDefault))) {
      throw 'Could not launch $originUrl';
    }
  }

  /// If this url can open external app, it will redirect to this app
  static bool needToOpenExternalApp(String? url) {
    for (var app in Constant.kExternalNonBrowserAppURLs) {
      if (url?.startsWith(app) ?? false) {
        return true;
      }
    }
    for (var app in Constant.kExternalAppURLs) {
      if ((url?.startsWith('http') ?? false) && (url?.contains(app) ?? false)) {
        return true;
      }
    }

    return false;
  }

  static String? prepareURL(String? url) {
    if (url == null) {
      return null;
    }

    final uri = Uri.tryParse(url);
    if (uri == null) {
      return null;
    }

    if (!url.startsWith('http') && uri.scheme.isEmpty) {
      return 'https://$url';
    }

    if (url.startsWith('intent://') && url.contains('scheme=')) {
      final intentInfo = url.substring(url.indexOf('scheme='));
      final scheme = intentInfo.substring(
        intentInfo.indexOf('scheme=') + 7,
        intentInfo.indexOf(';'),
      );

      return url.replaceFirst('intent://', '$scheme://');
    }

    return url;
  }
}
