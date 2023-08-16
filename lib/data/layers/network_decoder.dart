import 'dart:async';
import 'dart:isolate';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class NetworkDecoder {
  static final shared = NetworkDecoder();

  Future<K> decode<K>({
    required Response<dynamic> response,
    required K Function(Map<String, dynamic> json) jsonDecoder,
  }) async {
    try {
      if (response.data is List) {
        var list = response.data as List;
        var dataList = List<K>.from(
          list
              .map((item) async => (await Isolate.run(jsonDecoder(item) as FutureOr Function())))
              .toList(),
        ) as K;
        return dataList;
      } else {
        var data = await Isolate.run(() => jsonDecoder(response.data));
        return data;
      }
    } on TypeError catch (e) {
      debugPrint('NetworkDecoder Error: ${e.stackTrace.toString()}');
      rethrow;
    }
  }
}
