import 'dart:io';

import 'package:the_movie_database/data/interfaces/base_client_generator.dart';
import 'package:the_movie_database/data/wrappers/network_error.dart';
import 'package:the_movie_database/data/wrappers/network_options.dart';
import 'package:the_movie_database/data/wrappers/result.dart';
import 'package:the_movie_database/domain/model/core_response_object/core_response_object.dart';
import 'package:the_movie_database/domain/model/json_object/json_object.dart';

import 'network_executor.dart';

class CoreNetworkExecutor
    extends BaseNetworkExecutor<CoreResponseObject<JSONObject?>, JSONObject?> {
  const CoreNetworkExecutor(super.networkCreator, super.networkDecoder);

  @override
  Future<Result<JSONObject?, NetworkError>> handleBaseResponse(
    CoreResponseObject<JSONObject?> data, {
    required BaseClientGenerator route,
    NetworkOptions? options,
    required CoreResponseObject<JSONObject?> Function(JSONObject json) jsonDecoder,
  }) async {
    final statusCode = data.statusCode ?? 0;

    switch (statusCode) {
      case HttpStatus.ok:
      case HttpStatus.created:
      case HttpStatus.accepted:
      case HttpStatus.nonAuthoritativeInformation:
      case HttpStatus.noContent:
      case HttpStatus.resetContent:
      case HttpStatus.partialContent:
      case HttpStatus.multiStatus:
      case HttpStatus.alreadyReported:
      case HttpStatus.imUsed:
        return Result.success(data.data);
      default:
        return Result.failure(
          NetworkError.request(
            code: data.statusCode?.toString(),
            error: data.message,
          ),
        );
    }
  }
}
