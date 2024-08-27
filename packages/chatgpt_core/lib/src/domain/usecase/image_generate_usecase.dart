import 'package:injectable/injectable.dart';

import '../entities/payloads/image_generate_option_payload.dart';
import '../repositories/image_generate_repository.dart';

@injectable
class ImageGenerateUseCase {
  final ImageGenerateRepository _imageGenerateRepository;

  ImageGenerateUseCase(this._imageGenerateRepository);

  Future<List<String>?> generateImage({
    required String prompt,
    required ImageGenerateOptionPayload payload,
  }) async {
    return await _imageGenerateRepository.generateImage(prompt, payload);
  }
}
