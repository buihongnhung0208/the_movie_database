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
import 'package:the_movie_database/model/core_response_object/core_response.dart';

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
        (jsonObject) => CoreResponseObject.fromJson(
          jsonObject,
          (json) => mapper((JSONObject(json as JSONObjectAlias? ?? {}))),
        ),
        options: options,
        printToCurl: printToCurl,
      );

      final statusCode = HTTPStatus(coreResponseObject.statusCode);

      if (statusCode.isOk) {
        return Result.success(coreResponseObject.data);
      }

      return Result.failure(
        NetworkError.request(
          code: coreResponseObject.statusCode?.toString(),
          error: coreResponseObject.error,
        ),
      );
    } on DioException catch (error) {
      final httpStatus = HTTPStatus(error.response?.statusCode);
      return Result.failure(NetworkError.dio(error: error));
    } catch (error) {
      log('CoreRequest Error: ${error.toString()}');
      return Result.failure(NetworkError.type(error: error.toString()));
    }
  }

  Future<Result<List<T>?, NetworkError>> requestList<T>(
    BaseAPIInput input,
    T Function(JSONObject jsonObject) mapper, {
    NetworkOptions? options,
    bool printToCurl = false,
  }) async {
    try {
      final coreResponseObject = await requestJSONObject(
        input,
        (jsonObject) => CoreResponseObject.fromJson(
          jsonObject,
          (json) {
            if (json == null) return null;

            final dataList = json as List?;

            return dataList?.map((e) => mapper(JSONObject(e))).toList();
          },
        ),
        options: options,
        printToCurl: printToCurl,
      );

      final statusCode = HTTPStatus(coreResponseObject.statusCode);

      if (statusCode.isOk) {
        return Result.success(coreResponseObject.data);
      }

      return Result.failure(
        NetworkError.request(
          code: coreResponseObject.statusCode?.toString(),
          error: coreResponseObject.error,
        ),
      );
    } on DioException catch (error) {
      log('DioError: ${error.toString()}');
      return Result.failure(NetworkError.dio(error: error));
    } catch (error) {
      log('CoreListRequest Error: ${error.toString()}');
      return Result.failure(NetworkError.type(error: error.toString()));
    }
  }
}
