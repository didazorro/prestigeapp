import 'package:injectable/injectable.dart';

import '../../domain/entities/payloads/image_generate_option_payload.dart';
import '../../domain/repositories/image_generate_repository.dart';
import '../datasource/remote/supabase_api.dart';

@Injectable(as: ImageGenerateRepository)
class ImageGenerateRepositoryImpl extends ImageGenerateRepository {
  final SupabaseApi _supabaseApi;

  ImageGenerateRepositoryImpl(this._supabaseApi);

  @override
  Future<List<String>?> generateImage(
    String prompt,
    ImageGenerateOptionPayload payload,
  ) async {
    final body = {
      'prompt': prompt,
      ...payload.toJson(),
    };
    final response = await _supabaseApi.generateImage(body);
    final urls = response.data?.map((e) => e.url).toList();

    return urls ?? <String>[];
  }
}
