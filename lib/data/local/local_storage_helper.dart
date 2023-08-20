import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DefaultBox {
  static const appData = "appData";
  static const secureAppData = "secureAppData";
}

class LocalStorageHelper {
  static LocalStorageHelper? _instance;

  static LocalStorageHelper get instance => _instance ??= LocalStorageHelper._();

  List<LazyBox> lazyBoxs = [];

  LocalStorageHelper._();

  Future<Uint8List> getSecureKey() async {
    const secureStorage = FlutterSecureStorage();
    // if key not exists return null
    final encryptionKey = await secureStorage.read(key: 'key');
    if (encryptionKey == null) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(
        key: 'key',
        value: base64UrlEncode(key),
      );
    }
    final key = await secureStorage.read(key: 'key');
    final secureKey = base64Url.decode(key!);
    if (kDebugMode) {
      print('Encryption key: $secureKey');
    }
    return secureKey;
  }

  Future<void> initFlutter() async {
    await Hive.initFlutter();
    await _openLazyBox();
  }

  Future _openLazyBox() async {
    final secureKey = await getSecureKey();
    lazyBoxs = await Future.wait([
      Hive.openLazyBox(DefaultBox.appData),
      Hive.openLazyBox(
        DefaultBox.secureAppData,
        encryptionCipher: HiveAesCipher(secureKey),
      ),
    ]);
  }

  Future<void> write({
    required String key,
    dynamic cacheData,
    final String boxName = DefaultBox.appData,
  }) async {
    final box = Hive.lazyBox(boxName);
    final data = {
      'time': DateTime.now().millisecondsSinceEpoch,
      'data': cacheData,
    };
    await box.put(key, data);
  }

  Future<void> writeEncrypt({
    required String key,
    dynamic cacheData,
    final String boxName = DefaultBox.secureAppData,
  }) async {
    await write(key: key, cacheData: cacheData, boxName: boxName);
  }

  Future<dynamic> read({
    required String key,
    Duration? timeOut,
    final String boxName = DefaultBox.appData,
  }) async {
    try {
      final box = Hive.lazyBox(boxName);
      final cacheData = (await box.get(key)) as Map?;
      if (cacheData == null) return null;

      final timeCache = cacheData['time']?.toInt() ?? 0;
      final time = DateTime.fromMillisecondsSinceEpoch(timeCache);

      if (timeOut == null) {
        return cacheData['data'];
      }

      if (timeCache == 0 || DateTime.now().difference(time).abs() >= timeOut) {
        return null;
      }
      return cacheData['data'];
    } catch (_) {
      return null;
    }
  }

  Future<dynamic> readEncrypt({
    required String key,
    Duration? timeOut,
    final String boxName = DefaultBox.secureAppData,
  }) async {
    return read(key: key, timeOut: timeOut, boxName: boxName);
  }

  Future<void> remove(
    String key, {
    final String boxName = DefaultBox.appData,
  }) async {
    final box = Hive.lazyBox(boxName);
    return box.delete(key);
  }

  Future<dynamic> removeAll({
    final String? boxName = DefaultBox.appData,
  }) async {
    if (boxName != null) {
      final box = Hive.lazyBox(boxName);
      return box.clear();
    } else {
      for (var e in lazyBoxs) {
        await e.clear();
      }
    }
  }

  Future<void> close() async {
    for (var e in lazyBoxs) {
      await e.close();
    }
  }

  Future<void> deleteDb() {
    return Hive.deleteFromDisk();
  }
}
