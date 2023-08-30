import 'package:get_it/get_it.dart';
import 'package:the_movie_database/api_service/core_api_service.dart';
import 'package:the_movie_database/data/repository/repository.dart';
import 'package:the_movie_database/domain/repository/repository_type.dart';
import 'package:the_movie_database/domain/usecases/get_list_movies_usecase.dart';

final assembler = GetIt.instance;

void registerDependencies() {
  assembler.registerLazySingleton<RepositoryType>(
    () => Repository(assembler.get()),
  );
  assembler.registerLazySingleton(
    () => CoreAPIService(),
  );
  assembler.registerLazySingleton(
    () => GetListMoviesUseCase(assembler.get()),
  );
}
