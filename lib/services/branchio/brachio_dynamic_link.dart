import 'dart:async';

import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';

import '../../common/config/models/dynamic_link_config.dart';
import '../../common/constants.dart';
import '../dynamic_link_service.dart';

class BranchIODynamicLinkService extends DynamicLinkService {
  BranchIODynamicLinkService({
    required super.linkService,
    required this.branchIOConfig,
  });

  final BranchIOConfig branchIOConfig;

  @override
  Future<void> initialize() async {
    await FlutterBranchSdk.init(
      enableLogging: false,
      disableTracking: true,
      useTestKey: branchIOConfig.useTestKey,
    );

    // FlutterBranchSdk.validateSDKIntegration();

    FlutterBranchSdk.listSession().listen((final data) {
      final String? canonicalUrl = data['\$canonical_url'];
      if (canonicalUrl != null) {
        printLog('[BranchIODynamicLinkService] canonicalUrl: $canonicalUrl');
        linkService.handleDynamicLink(canonicalUrl.toUri()!);
      }
    }, onError: (error) {
      printLog(
          '[BranchIODynamicLinkService] listSession error: ${error.toString()}');
    });
  }

  @override
  Future<String?> createDynamicLink({required String productUrl}) async {
    final result = await _createDynamicLink(productUrl);
    printLog('[BranchIODynamicLinkService] Created the link: $result');
    return result;
  }

  Future<String?> _createDynamicLink(String url) async {
    final buo = BranchUniversalObject(
      canonicalUrl: url,
      canonicalIdentifier: url,
      // title: 'Check out this amazing content!',
      // contentDescription: 'This is a description of the content.',
      // imageUrl: 'https://example.com/image.jpg',
      publiclyIndex: true,
      locallyIndex: true,
      // contentMetadata: BranchContentMetaData()
      //   ..addCustomMetadata('key', 'value'), // Add custom metadata as needed
    );

    final lp = BranchLinkProperties(
      channel: 'flutter-app',
      feature: 'share',
      // stage: 'new user'
    )..addControlParam('\$desktop_url', url)
        // ..addControlParam('\$deeplink_path', url)
        // ..addControlParam('\$android_url', url)
        ;

    final response =
        await FlutterBranchSdk.getShortUrl(buo: buo, linkProperties: lp);

    if (response.success) {
      final result = '${response.result}';
      return result;
      // Use this link to share or display in your app
    } else {
      printLog('Error: ${response.errorCode} - ${response.errorMessage}');
      return null;
    }
  }
}
