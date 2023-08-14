import 'package:the_movie_database/data/interfaces/base_client_generator.dart';
import 'package:the_movie_database/di/manage_document_assembler.dart';

import '../../../../config/core_constant.dart';

abstract class OnPremiseClient extends BaseClientGenerator {
  @override
  String get baseUrl => assembler.get(instanceName: CoreConstant.baseOnPremiseUrl);

  @override
  Duration? get sendTimeout => const Duration(seconds: 60000);

  @override
  Duration? get receiveTimeOut => const Duration(seconds: 60000);

  @override
  Duration? get connectTimeout => const Duration(seconds: 60000);
}
