import 'package:injectable/injectable.dart';

import '../entities/text_generate/prompt_use_case.dart';
import '../repositories/text_generate_repository.dart';

@injectable
class TextGenerateUsecase {
  final TextGenerateRepository _repository;

  TextGenerateUsecase(this._repository);

  Future<String?> generateTextFromPromptUsecase(PromptUseCase useCase) async {
    final selectedUseCase = useCase;
    var prompt = 'Write me a ${selectedUseCase.name} ';
    for (var index = 0;
        index < selectedUseCase.listSubPromptUseCase.length;
        index++) {
      final field = selectedUseCase.listSubPromptUseCase[index];
      prompt += '${field.name}: ${field.promptText} ';
    }

    return await _repository.generateText(prompt);
  }

  Future<String?> generateTextFromPromptText(String prompt) async {
    return await _repository.generateText(prompt);
  }

  Future<List<PromptUseCase>?> getUseCases() async {
    return await _repository.getPromptUseCases();
  }
}
