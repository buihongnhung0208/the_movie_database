import 'package:the_movie_database/config/core_constant.dart';
import 'package:the_movie_database/data/interfaces/base_client_generator.dart';
import 'package:the_movie_database/di/dependencies.dart';


abstract class OnPremiseClient extends BaseClientGenerator {
  @override
  String get baseUrl => assembler.get(instanceName: CoreConstant.baseUrl);

  @override
  Duration? get sendTimeout => const Duration(seconds: 60000);

  @override
  Duration? get receiveTimeOut => const Duration(seconds: 60000);

  @override
  Duration? get connectTimeout => const Duration(seconds: 60000);
}