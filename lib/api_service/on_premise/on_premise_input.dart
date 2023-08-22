import 'package:mg_api_service/model/base_api_input.dart';

abstract class OnPremiseInput extends BaseAPIInput {
  OnPremiseInput({
    required super.path,
    required super.method,
    super.requireAccessToken,
  });

  @override
  String get baseUrl => '';
}
