import 'package:the_movie_database/data/interfaces/base_client_generator.dart';
import 'package:the_movie_database/di/manage_document_assembler.dart';

import '../../../../config/core_constant.dart';

abstract class CoreClient extends BaseClientGenerator {
  const CoreClient();

  @override
  String get baseUrl => assembler.get<String>(instanceName: CoreConstant.baseUrl);
}
