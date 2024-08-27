import '../entities/text_generate/prompt_use_case.dart';

abstract class TextGenerateRepository {
  Future<String?> generateText(String prompt);
  Future<List<PromptUseCase>?> getPromptUseCases();
}
