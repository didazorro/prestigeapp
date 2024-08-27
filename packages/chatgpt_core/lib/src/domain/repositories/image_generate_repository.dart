import '../entities/payloads/image_generate_option_payload.dart';

abstract class ImageGenerateRepository {
  Future<List<String>?> generateImage(
    String prompt,
    ImageGenerateOptionPayload payload,
  );
}
