import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mg_api_service/base_api_service.dart';
import 'package:mg_api_service/extension/json_object.dart';
import 'package:mg_api_service/extension/type_alias.dart';
import 'package:mg_api_service/helper/http_headers.dart';
import 'package:mg_api_service/helper/http_status.dart';
import 'package:mg_api_service/helper/network_options.dart';
import 'package:mg_api_service/model/base_api_input.dart';
import 'package:mg_api_service/wrapper/network_error.dart';
import 'package:mg_api_service/wrapper/result.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class CoreAPIService extends BaseAPIService {
  CoreAPIService() : super();

  CoreAPIService.mock(Dio dio) : super.mock(dio);

  @override
  Future<BaseAPIInput> preprocess(BaseAPIInput input) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final accessToken = sharedPrefs.getString('access_token');
    if (accessToken != null) {
      input.headers.addHeader(HTTPHeader.bearerAuthorization(accessToken));
    }
    return Future.value(input);
  }

  Future<Result<T?, NetworkError>> request<T>(
    BaseAPIInput input,
    T Function(JSONObject jsonObject) mapper, {
    NetworkOptions? options,
    bool printToCurl = false,
  }) async {
    try {
      final coreResponseObject = await requestJSONObject(
        input,
        mapper,
        options: options,
        printToCurl: printToCurl,
      );
      return Result.success(coreResponseObject);
    } on DioException catch (error) {
      return Result.failure(NetworkError.dio(error: error));
    } catch (error) {
      log('CoreRequest Error: ${error.toString()}');
      return Result.failure(NetworkError.type(error: error.toString()));
    }
  }
}
