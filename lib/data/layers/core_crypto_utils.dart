import 'package:crypton/crypton.dart';

class CoreCryptoUtils {
  const CoreCryptoUtils._();

  static Future<String> encrypt<T>(T rawData) async {
    return '';
  }

  static Future<String> decrypt(String encryptedData) async {
    return '';
  }

  static Future<String> encryptPassword(String password, String publicKey) async {
    final pubKey = RSAPublicKey.fromString(publicKey);
    final encryptedData = pubKey.encrypt(password);
    return encryptedData;
  }
}
