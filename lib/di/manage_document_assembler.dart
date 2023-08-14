import 'package:get_it/get_it.dart';

final assembler = GetIt.instance;

void registerManageDocumentDependencies() {
  assembler.registerLazySingleton(
    // () => GetListDocumentsUserCase(assembler.get()),
  );

}
