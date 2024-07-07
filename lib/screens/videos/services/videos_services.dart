import 'dart:convert' as convert;

import 'package:collection/collection.dart';
import 'package:quiver/strings.dart';

import '../../../common/constants.dart';
import '../../../models/entities/product.dart';
import '../../../services/services.dart';
import '../models/video.dart';
import '../models/vimeo_video_config.dart';

const int perPage = 10;

class VideosService {
  int page = 1;

  Future<List<Product>> refreshItems(String langCode) async {
    page = 1;
    return _getItems(page, langCode);
  }

  Future<List<Product>> loadMoreItems(String langCode) async {
    page += 1;
    final result = await _getItems(page, langCode);

    if (result.isEmpty && page > 1) {
      page -= 1;
    }

    return result;
  }

  Future<List<Product>> _getItems(int page, String langCode) async {
    try {
      var results = <Product>[];
      var products = await Services().api.getVideoProducts(
            page: page,
            perPage: perPage,
          );
      for (var product in products) {
        if (product.mVideoUrl?.isNotEmpty ?? false) {
          results.add(product);
        }
      }
      return results;
    } catch (err) {
      rethrow;
    }
  }

  Future<VimeoVideoConfig?> getVimeoVideoConfig({
    required String vimeoVideoId,
  }) async {
    try {
      final response = await httpGet(
        'https://player.vimeo.com/video/$vimeoVideoId/config'.toUri()!,
      );
      var body = convert.jsonDecode(response.body);
      if (body is Map && isNotBlank(body['message'])) {
        throw Exception(body['message']);
      } else {
        var vimeoVideo = VimeoVideoConfig.fromJson(body);
        return vimeoVideo;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Video>> loadListVideo(List<Product> products) async {
    var items = <Video>[];
    try {
      for (var product in products) {
        var videoId = _getVimeoVideoId(product.mVideoUrl ?? '');
        var videoUrl = videoId.isEmpty ? product.mVideoUrl ?? '' : '';
        if (videoId.isNotEmpty) {
          var videoConfig = await getVimeoVideoConfig(vimeoVideoId: videoId);
          videoUrl = videoConfig?.request?.files?.progressive
                  ?.firstWhereOrNull(
                      (e) => e?.quality == '360p' || e?.quality == '720p')
                  ?.url ??
              product.mVideoUrl ??
              '';
        }

        items.add(Video(product: product, videoUrl: videoUrl));
      }
    } catch (_) {}
    return items;
  }

  String _getVimeoVideoId(String url) {
    var vimeoVideoId = '';
    var videoIdGroup = 4;
    for (var exp in [
      RegExp(r'^((https?):\/\/)?(www.)?vimeo\.com\/([0-9]+).*$'),
    ]) {
      var match = exp.firstMatch(url);
      if (match != null && match.groupCount >= 1) {
        vimeoVideoId = match.group(videoIdGroup) ?? '';
      }
    }
    return vimeoVideoId;
  }
}
