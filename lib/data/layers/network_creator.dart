
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:the_movie_database/data/interfaces/base_client_generator.dart';
import 'package:the_movie_database/data/wrappers/network_options.dart';

abstract class BaseNetworkCreator {
  const BaseNetworkCreator(this._dio);

  final Dio _dio;

  static BaseNetworkCreator defaultInstance = DefaultNetworkCreator(GetIt.instance.get<Dio>());

  Future<Response> request({
    required BaseClientGenerator route,
    NetworkOptions? options,
  }) async {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async =>
            _preRequestInterceptor(options: options, handler: handler),
        onResponse: (response, handler) async =>
            await refreshTokenInterceptor(response, handler, route),
        onError: (error, handler) async =>
            await errorInterceptor(error: error, handler: handler, route: route),
      ),
    );

    return _dio.fetch(
      RequestOptions(
        baseUrl: route.baseUrl,
        method: route.method,
        path: route.path,
        queryParameters: route.queryParameters,
        data: route.body,
        sendTimeout: route.sendTimeout,
        receiveTimeout: route.sendTimeout,
        onReceiveProgress: options?.onReceiveProgress,
        validateStatus: (statusCode) =>
            (statusCode! >= HttpStatus.ok && statusCode <= HttpStatus.multipleChoices),
      ),
    );
  }

  Future<void> _preRequestInterceptor({
    required RequestOptions options,
    required RequestInterceptorHandler handler,
  }) async {
    await preRequest(options);
    handler.next(options);
  }

  Future<void> preRequest(RequestOptions options);

  Future<void> refreshTokenInterceptor(
    Response response,
    ResponseInterceptorHandler handler,
    BaseClientGenerator route,
  ) async {
    if (response.statusCode == HttpStatus.ok) {
      handler.resolve(response);
    }
  }

  Future<void> errorInterceptor({
    required DioError error,
    required ErrorInterceptorHandler handler,
    required BaseClientGenerator route,
    NetworkOptions? options,
  }) async {
    handler.next(error);
  }
}

class DefaultNetworkCreator extends BaseNetworkCreator {
  DefaultNetworkCreator(super._dio);

  @override
  Future<void> preRequest(RequestOptions options) => Future.value();

  @override
  Future<void> errorInterceptor({
    required DioError error,
    required ErrorInterceptorHandler handler,
    required BaseClientGenerator route,
    NetworkOptions? options,
  }) async {
    if (error.response?.statusCode == HttpStatus.forbidden ||
        error.response?.statusCode == HttpStatus.unauthorized) {
      await handleRefreshToken();
      final response = await request(route: route, options: options);
      handler.resolve(response);
      return;
    }
    handler.next(error);
  }

  Future<void> handleRefreshToken() => Future.value();
}
