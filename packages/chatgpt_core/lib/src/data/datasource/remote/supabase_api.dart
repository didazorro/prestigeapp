import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/api_response.dart';
import '../../models/just_url.dart';
import '../../models/prompt/prompt_model.dart';
import '../../models/text_generate/text_generate_model.dart';

part 'supabase_api.g.dart';

class SupabaseEndpoints {
  static const String chat = '/chat';
  static const String imageGenerate = '/image-generate';
  static const String prompt = '/prompt';
}

@RestApi()
@injectable
abstract class SupabaseApi {
  @factoryMethod
  factory SupabaseApi(Dio dio) = _SupabaseApi;

  @POST(SupabaseEndpoints.chat)
  Future<ApiResponse<TextGenerateModel>> chat(
    @Body() Map<String, dynamic> body,
  );

  @POST(SupabaseEndpoints.imageGenerate)
  Future<ApiResponse<List<JustUrl>?>> generateImage(
    @Body() Map<String, dynamic> body,
  );

  @POST(SupabaseEndpoints.prompt)
  Future<ApiResponse<List<PromptModel>?>> prompt();
}
