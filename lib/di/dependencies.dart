import 'dart:async';

import 'package:dio/dio.dart';

// import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:the_movie_database/config/core_constant.dart';
import 'package:the_movie_database/data/layers/core_network_creator.dart';
import 'package:the_movie_database/data/layers/core_network_executor.dart';
import 'package:the_movie_database/data/layers/interceptors/encoding_interceptor.dart';
import 'package:the_movie_database/data/layers/network_creator.dart';
import 'package:the_movie_database/data/layers/network_decoder.dart';
import 'package:the_movie_database/data/local/local_storage_helper.dart';

import 'manage_assembler.dart';

final assembler = GetIt.instance;

Future<void> registerDependencies() async {
  // addDynamicWidgetParsers();
  await LocalStorageHelper.instance.initFlutter();
  assembler.registerLazySingleton<Dio>(
    () => Dio()
      ..interceptors.addAll([
        EncodingInterceptor(),
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          compact: true,
          maxWidth: 90,
          logPrint: (object) => debugPrint(object.toString()),
        ),
      ]),
  );
  assembler.registerLazySingleton(
    () => CoreNetworkExecutor(assembler.get(), NetworkDecoder.shared),
  );
  assembler.registerLazySingleton<BaseNetworkCreator>(() => CoreNetworkCreator(assembler.get()));
  assembler.registerSingleton<String>(
    FlutterConfig.get('BASE_URL'),
    instanceName: CoreConstant.baseUrl,
  );
  registerManageDependencies();
}

// void addDynamicWidgetParsers() {
//   DynamicWidgetBuilder.addParser(SvgParser());
// }
