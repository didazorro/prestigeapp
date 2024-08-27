import 'package:injectable/injectable.dart';

import '../../domain/entities/prompt/prompt.dart';
import '../../domain/repositories/prompt_repository.dart';
import '../datasource/remote/supabase_api.dart';

@Injectable(as: PromptRepository)
class PromptRepositoryImpl implements PromptRepository {
  // final PromptRemoteDataSource remoteDataSource;
  // final PromptLocalDataSource localDataSource;

  // PromptRepositoryImpl({
  //   required this.remoteDataSource,
  //   required this.localDataSource,
  // });

  final SupabaseApi _supabaseApi;

  PromptRepositoryImpl(this._supabaseApi);

  @override
  Future<List<Prompt>> getPrompts() async {
    final prompts = await _supabaseApi.prompt();

    return prompts.data?.map((e) => e.toEntity()).toList() ?? <Prompt>[];
  }

// @override
// Future<Either<Failure, Prompt>> getRandomPrompt() async {
//   try {
//     final prompt = await remoteDataSource.getRandomPrompt();
//     localDataSource.cachePrompt(prompt);
//     return Right(prompt);
//   } on ServerException {
//     return Left(ServerFailure());
//   }
// }
//
// @override
// Future<Either<Failure, Prompt>> getPrompt() async {
//   try {
//     final prompt = await localDataSource.getLastPrompt();
//     return Right(prompt);
//   } on CacheException {
//     return Left(CacheFailure());
//   }
// }
}
