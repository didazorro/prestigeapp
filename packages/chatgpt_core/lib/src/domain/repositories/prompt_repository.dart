import '../entities/prompt/prompt.dart';

abstract class PromptRepository {
  Future<List<Prompt>> getPrompts();
}
