import 'package:injectable/injectable.dart';

import '../entities/prompt/prompt.dart';
import '../repositories/prompt_repository.dart';

@injectable
class PromptUsecase {
  final PromptRepository _promptRepository;

  PromptUsecase(this._promptRepository);

  Future<List<Prompt>?> getPrompts() {
    return _promptRepository.getPrompts();
  }
}
