import 'package:the_movie_database/data/repository/manage_repository.dart';
import 'package:the_movie_database/domain/repository/manage_repository_type.dart';
import 'package:the_movie_database/domain/usecases/get_list_popular/get_list_popular_use_case.dart';
import 'dependencies.dart';

void registerManageDependencies() {
  assembler.registerLazySingleton<ManageRepositoryType>(
        () => ManageRepository(assembler.get()),
  );
  assembler.registerLazySingleton(
    () => GetListPopularUserCase(assembler.get()),
  );
}
