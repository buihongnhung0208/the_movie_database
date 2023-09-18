import 'package:flutter_config/flutter_config.dart';
import 'package:mg_api_service/model/base_api_input.dart';

abstract class CoreAPIInput extends BaseAPIInput {
  CoreAPIInput({
    required super.path,
    required super.method,
    super.requireAccessToken,
  });

  @override
  String get baseUrl => FlutterConfig.get('BASE_URL');
}
