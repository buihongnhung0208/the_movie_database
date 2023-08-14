// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_error.freezed.dart';

@freezed
class NetworkError with _$NetworkError implements Exception {
  const NetworkError._() : super();

  const factory NetworkError.dio({required DioError error}) = _DioError;

  const factory NetworkError.request({String? code, String? error}) = _RequestError;

  const factory NetworkError.type({String? error}) = _TypeError;

  const factory NetworkError.connectivity({String? message}) = _ConnectivityError;

  // Printing the error
  String? get localizedErrorMessage {
    return when<String?>(
      dio: (dioError) => dioError.message,
      request: (code, error) => error,
      type: (error) => error,
      connectivity: (message) => message,
    );
  }

  String? get codeErrorMessage {
    return when<String?>(
      dio: (dioError) => dioError.response?.statusCode.toString(),
      request: (code, error) => code,
      type: (error) => '998',
      connectivity: (message) => '999',
    );
  }
}
