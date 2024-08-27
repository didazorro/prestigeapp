import 'package:injectable/injectable.dart';

import '../../core/components/constants/constant.dart';
import '../../domain/entities/text_generate/prompt_use_case.dart';
import '../../domain/repositories/text_generate_repository.dart';
import '../datasource/remote/supabase_api.dart';

@Injectable(as: TextGenerateRepository)
class TextGenerateRepositoryImpl extends TextGenerateRepository {
  final SupabaseApi _supabaseApi;

  TextGenerateRepositoryImpl(this._supabaseApi);

  @override
  Future<String?> generateText(String prompt) async {
    final body = {
      'messages': [
        {
          'role': 'user',
          'content': prompt,
        },
      ],
    };

    final result = await _supabaseApi.chat(body);

    return result.data.content;
  }

  @override
  Future<List<PromptUseCase>?> getPromptUseCases() async {
    return Constant.testUseCases;
  }
}
