import 'package:flutter/material.dart';
import 'package:inspireui/utils/logs.dart';
import 'package:photo_manager/photo_manager.dart';

import '../../../common/config.dart';
import '../../../common/tools/image_tools.dart';
import '../../../models/entities/review_payload.dart';
import '../../../services/services.dart';

typedef ErrorStringCallback = void Function(String? error);
typedef SuccessCallback = void Function();

class CreateReviewModel with ChangeNotifier {
  final services = Services();
  ErrorStringCallback? onError;
  SuccessCallback? onSuccess;

  bool _isSubmitting = false;

  bool get isSubmitting => _isSubmitting;

  void setErrorCallback(ErrorStringCallback callback) {
    onError = callback;
  }

  void setSuccessCallback(SuccessCallback callback) {
    onSuccess = callback;
  }

  Future<void> submitReview({
    required String productId,
    required String? email,
    required String name,
    required String? token,
    required double rating,
    required String content,
    required List<AssetEntity> images,
  }) async {
    try {
      if (content.isEmpty) {
        onError?.call('Review content is required');
        return;
      }

      _isSubmitting = true;
      notifyListeners();

      final stringListImageBase64 =
          await ImageTools.compressAndConvertImagesForUploading(images);

      final payload = ReviewPayload(
        productId: productId,
        reviewerEmail: email,
        reviewerName: name,
        token: token,
        rating: rating.toInt(),
        review: content,
        image: stringListImageBase64,
        shopDomain: kReviewConfig.judgeConfig.domain,
        status: kAdvanceConfig.enableApprovedReview ? 'approved' : 'hold',
      );

      await services.api.createReview(payload);
    } catch (e) {
      printLog('Error submitting review: $e');
      onError?.call(e.toString());
      return;
    } finally {
      _isSubmitting = false;
      notifyListeners();
    }

    onSuccess?.call();
  }
}
