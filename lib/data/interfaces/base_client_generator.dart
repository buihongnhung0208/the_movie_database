abstract class BaseClientGenerator {
  const BaseClientGenerator();

  String get baseUrl;

  String get path;

  String get method;

  dynamic get body;

  Map<String, dynamic>? get queryParameters;

  Map<String, dynamic> get header => {'Content-Type': 'application/json'};

  Duration? get sendTimeout => const Duration(milliseconds: 30000);

  Duration? get receiveTimeOut => const Duration(milliseconds: 30000);

  Duration? get connectTimeout => const Duration(milliseconds: 30000);
}
