import 'dart:async';
import 'dart:convert';
import 'dart:io' as file;
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:get_thumbnail_video/index.dart';
import 'package:get_thumbnail_video/video_thumbnail.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import '../../generated/l10n.dart';
import '../../services/index.dart' show ServerConfig, ConfigType;
import '../config.dart' show kAdvanceConfig;
import '../constants.dart' show isAndroid, kDefaultImage;
import 'image_resize.dart' show kSize;

export './image_resize.dart';

class ImageTools {
  static String prestashopImage(String url, [kSize? size = kSize.medium]) {
    if (url.contains('?')) {
      switch (size) {
        case kSize.large:
          return url.replaceFirst('?', '/large_default?');
        case kSize.small:
          return url.replaceFirst('?', '/small_default?');
        default: // kSize.medium
          return url.replaceFirst('?', '/medium_default?');
      }
    }
    switch (size) {
      case kSize.large:
        return '$url/large_default';
      case kSize.small:
        return '$url/small_default';
      default: // kSize.medium
        return '$url/medium_default';
    }
  }

  static final _regexImageShopify = RegExp('(?:[-_]?[0-9]+x[0-9]+)+');

  static String shopifyImage(String url, [kSize? size = kSize.medium]) {
    var lastIndex = url.lastIndexOf('_');
    lastIndex = lastIndex == -1 ? 0 : lastIndex;
    return url.replaceFirstMapped(_regexImageShopify, (match) {
      switch (size) {
        case kSize.large:
          return '_3500x3500';
        case kSize.small:
          return '_1000x1000';
        default: // kSize.medium
          return '_2000x2000';
      }
    }, lastIndex);
  }

  static String? formatImage(String? url, [kSize? size = kSize.medium]) {
    if (ServerConfig().type == ConfigType.presta) {
      return prestashopImage(url!, size);
    }

    if (ServerConfig().isShopify) {
      return shopifyImage(url!, size);
    }

    if (ServerConfig().isCacheImage ?? kAdvanceConfig.kIsResizeImage) {
      var pathWithoutExt = p.withoutExtension(url!);
      var ext = p.extension(url);
      String? imageURL = url;

      if (ext == '.jpeg') {
        imageURL = url;
      } else {
        switch (size) {
          case kSize.large:
            imageURL = '$pathWithoutExt-large$ext';
            break;
          case kSize.small:
            imageURL = '$pathWithoutExt-small$ext';
            break;
          default: // kSize.medium:e
            imageURL = '$pathWithoutExt-medium$ext';
            break;
        }
      }

      // printLog('[🏞Image Caching] $imageURL');
      return imageURL;
    } else {
      return url;
    }
  }

  static NetworkImage networkImage(String? url, [kSize size = kSize.medium]) {
    return NetworkImage(formatImage(url, size) ?? kDefaultImage);
  }

  /// cache avatar for the chat
  static CachedNetworkImage getCachedAvatar(String avatarUrl) {
    return CachedNetworkImage(
      imageUrl: avatarUrl,
      imageBuilder: (context, imageProvider) => CircleAvatar(
        backgroundImage: imageProvider,
      ),
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }

  static BoxFit boxFit(
    String? fit, {
    BoxFit? defaultValue,
  }) {
    switch (fit) {
      case 'contain':
        return BoxFit.contain;
      case 'fill':
        return BoxFit.fill;
      case 'fitHeight':
        return BoxFit.fitHeight;
      case 'fitWidth':
        return BoxFit.fitWidth;
      case 'scaleDown':
        return BoxFit.scaleDown;
      case 'cover':
        return BoxFit.cover;
      default:
        return defaultValue ?? BoxFit.cover;
    }
  }

  static Future<file.File> writeToFile(Uint8List? data,
      {String? fileName}) async {
    final tempDir = await getTemporaryDirectory();
    final tempPath = tempDir.path;
    var filePath = '$tempPath/${fileName ?? 'file_01'}.jpeg';
    var f = file.File(filePath);
    if (data != null) {
      await f.writeAsBytes(data);
    }
    return f;
  }

  static Future<String?> getImagePath(dynamic image) async {
    if (image is AssetEntity && isAndroid) {
      var file = await image.file;
      return file?.path;
    }

    if (image is AssetEntity || image is file.File) {
      final byteData = await image.originBytes;

      if (byteData != null) {
        final tmpFile = await writeToFile(byteData);
        return tmpFile.path;
      }
    }

    if (image is XFile) {
      return image.path;
    }

    if (image is String) {
      if (image.contains('http')) {
        return image;
      }
    }
    return null;
  }

  static Future<String> compressImage(dynamic image) async {
    var base64 = '';
    //const quality = 60;

    /// Disable cause the build issue on Flutter 2.2
    /// https://github.com/OpenFlutter/flutter_image_compress/issues/180

    if (image is AssetEntity && isAndroid) {
      var file = await image.file;
      if (file?.path != null) {
        final compressedFile = await FlutterNativeImage.compressImage(
          file!.path,
        );
        final bytes = compressedFile.readAsBytesSync();
        return base64Encode(bytes);
      }
    }

    if (image is AssetEntity || image is file.File) {
      Uint8List? byteData;

      if (image is AssetEntity) {
        byteData = await image.originBytes;
      } else if (image is file.File) {
        byteData = await image.readAsBytes();
      }

      if (byteData != null) {
        final tmpFile = await writeToFile(byteData);

        final compressedFile = await FlutterNativeImage.compressImage(
          tmpFile.path,
        );
        final bytes = compressedFile.readAsBytesSync();
        base64 += base64Encode(bytes);
      }
    }

    if (image is XFile) {
      final compressedFile = await FlutterNativeImage.compressImage(
        image.path,
      );
      final bytes = compressedFile.readAsBytesSync();
      base64 += base64Encode(bytes);
    }

    if (image is String) {
      if (image.contains('http')) {
        base64 += image;
      }
    }
    return base64;
  }

  static Future<String> compressAndConvertImagesForUploading(
      List<dynamic> images) async {
    var base64 = StringBuffer();
    for (final image in images) {
      base64
        ..write(await compressImage(image))
        ..write(',');
    }
    return base64.toString();
  }

  static Future<Uint8List?> getThumbnailFromVideo(
    String videoPath, {
    double? maxWidth,
    double? maxHeight,
    int quality = 75,
  }) async {
    try {
      final thumbnailPath = await VideoThumbnail.thumbnailData(
        video: videoPath,
        imageFormat: ImageFormat.WEBP,
        maxWidth: maxWidth?.round() ?? 64,
        maxHeight: maxHeight?.round() ?? 64,
        quality: quality,
      );
      return thumbnailPath;
    } catch (e) {
      return null;
    }
  }

  static Future<bool> checkImageLive(String imageUrl) async {
    final response = await http.get(Uri.parse(imageUrl));
    if (response.statusCode == 200) {
      try {
        final contentType = response.headers['content-type'];
        final isImage = contentType != null && contentType.startsWith('image/');

        return isImage && response.bodyBytes.isNotEmpty;
      } catch (e) {
        return false;
      }
    } else {
      return false;
    }
  }

  static Future<void> preLoadingImage(String imageUrl, BuildContext context,
      [bool useExtendedImage = true]) async {
    final isUrl = imageUrl.contains('http');
    final imageProvider;

    if (isUrl) {
      if (useExtendedImage) {
        imageProvider = ExtendedNetworkImageProvider(imageUrl, cache: true);
      } else {
        imageProvider = NetworkImage(imageUrl);
      }
    } else {
      imageProvider = AssetImage(imageUrl);
    }
    await precacheImage(imageProvider, context);
  }

  static Future<void> preLoadingListImages(
      List<String> url, BuildContext context,
      [bool useExtendedImage = true]) async {
    var futures = <Future>[];
    for (var e in url) {
      futures.add(ImageTools.preLoadingImage(e, context, useExtendedImage));
    }
    await Future.wait<void>(futures);
  }

  static void preLoadingListImagesInitState(
      List<String> url, BuildContext context,
      [bool useExtendedImage = true]) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ImageTools.preLoadingListImages(url, context);
    });
  }
}

class CustomAssetPickerTextDelegate extends EnglishAssetPickerTextDelegate {
  CustomAssetPickerTextDelegate({required this.context});

  final BuildContext context;

  @override
  String get confirm => S.of(context).confirm;

  @override
  String get cancel => S.of(context).cancel;

  @override
  String get select => S.of(context).select;

  @override
  String get loadFailed => S.of(context).loadFail;

  @override
  String get emptyList => S.of(context).dataEmpty;

  @override
  String get preview => S.of(context).preview;
}

class ImagePicker {
  /// List locales are already supported by picker
  static List<String> supportDefaultLocales = [
    'zh',
    'en',
    'he',
    'de',
    'ru',
    'ja',
    'ar',
    'fr',
    'vi',
    'tr'
  ];

  static Future<List<AssetEntity>> select(
    BuildContext context, {
    int maxFiles = 1,
    List<AssetEntity>? selectedAssets,
    RequestType requestType = RequestType.common,
  }) async {
    // final isGranted = await checkGrantedPermission();

    final currentLocale =
        Localizations.maybeLocaleOf(context)?.languageCode.toLowerCase();

    final result = await AssetPicker.pickAssets(
      context,
      pickerConfig: AssetPickerConfig(
        maxAssets: maxFiles,
        pickerTheme: Theme.of(context),
        specialPickerType: SpecialPickerType.noPreview,
        selectedAssets: selectedAssets,
        requestType: requestType,
        textDelegate: supportDefaultLocales.contains(currentLocale)
            ? null
            : CustomAssetPickerTextDelegate(context: context),
      ),
    );
    return result ?? [];
  }

  static Future<PermissionState> checkGrantedPermission() async {
    final permissionState = await PhotoManager.requestPermissionExtend();
    return permissionState;
  }

  static Future<Uint8List?>? getByteData(dynamic image) {
    if (image is AssetEntity) {
      return image.originBytes;
    }
    return null;
  }

  static Widget getThumbnail(dynamic image,
      {double width = 100, double height = 100}) {
    if (image is AssetEntity) {
      return AssetEntityImage(
        image,
        width: width,
        height: height,
      );
    }
    return const SizedBox();
  }

  static bool isAsset(dynamic image) => image is AssetEntity;
}

extension PermissionStateExt on PermissionState {
  /// Returns `true` if the permission has been granted; otherwise, `false`.
  bool get isNotDetermined {
    return this == PermissionState.notDetermined;
  }

  /// Returns `true` if the permission has been granted; otherwise, `false`.
  /// Returns `true` if the permission has been granted; otherwise, `false`.
  bool get isRestricted {
    return this == PermissionState.restricted;
  }

  /// Returns `true` if the permission has been granted; otherwise, `false`.
  bool get isDenied {
    return this == PermissionState.denied;
  }

  /// Returns `true` if the permission has been granted; otherwise, `false`.
  bool get isAuthorized {
    return this == PermissionState.authorized;
  }

  /// Returns `true` if the permission has been granted; otherwise, `false`.
  bool get isLimited {
    return this == PermissionState.limited;
  }
}
