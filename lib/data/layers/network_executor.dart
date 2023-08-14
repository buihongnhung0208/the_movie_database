// import 'dart:isolate';
//
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:the_movie_database/data/interfaces/base_response_object.dart';
// import 'package:the_movie_database/data/layers/network_decoder.dart';
//
// import '../interfaces/base_client_generator.dart';
// import '../wrappers/network_error.dart';
// import '../wrappers/network_options.dart';
// import '../wrappers/result.dart';
// import 'network_creator.dart';
//
// abstract class BaseNetworkExecutor<T extends BaseResponseObject, R> {
//   const BaseNetworkExecutor(this._networkCreator, this._networkDecoder);
//
//   final BaseNetworkCreator _networkCreator;
//   final NetworkDecoder _networkDecoder;
//
//   static BaseNetworkExecutor defaultInstance = DefaultNetworkExecutor(
//     BaseNetworkCreator.defaultInstance,
//     NetworkDecoder.shared,
//   );
//
//   Future<Result<R, NetworkError>> execute({
//     required BaseClientGenerator route,
//     NetworkOptions? options,
//     required T Function(Map<String, dynamic> json) jsonDecoder,
//   }) async {
//     debugPrint(route.toString());
//
//    // Check Network Connectivity
//     if (await NetworkConnectivity.instance.isConnected) {
//       try {
//         final response = await _networkCreator.request(route: route, options: options);
//
//         final data = _networkDecoder.decode<T>(
//           response: response,
//           jsonDecoder: jsonDecoder,
//         );
//
//         /// handle errors follow by base response's status
//         return await handleBaseResponse(
//           await data,
//           route: route,
//           options: options,
//           jsonDecoder: jsonDecoder,
//         );
//
//         // NETWORK ERROR
//       } on DioError catch (diorError) {
//         debugPrint("$route => ${NetworkError.dio(error: diorError)}");
//         return Result.failure(NetworkError.dio(error: diorError));
//
//         // TYPE ERROR
//       } on TypeError catch (e) {
//         debugPrint("$route => ${NetworkError.type(error: e.toString())}");
//         return Result.failure(NetworkError.type(error: e.toString()));
//       }
//
//       // No Internet Connection
//     } else {
//       debugPrint('No Internet Connection');
//       return const Result.failure(NetworkError.connectivity(message: 'No Internet Connection'));
//     }
//   }
//
//   Future<Result<R, NetworkError>> handleBaseResponse(
//     T data, {
//     required BaseClientGenerator route,
//     NetworkOptions? options,
//     required T Function(Map<String, dynamic> json) jsonDecoder,
//   });
// }
//
// class DefaultNetworkExecutor extends BaseNetworkExecutor<BaseResponseObject, BaseResponseObject> {
//   const DefaultNetworkExecutor(super._networkCreator, super._networkDecoder);
//
//   @override
//   Future<Result<BaseResponseObject, NetworkError>> handleBaseResponse(
//     BaseResponseObject data, {
//     required BaseClientGenerator route,
//     NetworkOptions? options,
//     required BaseResponseObject Function(Map<String, dynamic> json) jsonDecoder,
//   }) async {
//     return Result.success(data);
//   }
// }
