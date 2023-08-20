/// HTTP methods.
class HttpMethod {
  /// The [get] method requests a representation of the specified resource.
  /// Requests using [get] should only retrieve data.
  static const HttpMethod get = HttpMethod._('GET');

  /// The [head] method asks for a response identical to that of a [get] request,
  /// but without the response body.
  static const HttpMethod head = HttpMethod._('HEAD');

  /// The [post] method is used to submit an entity to the specified resource,
  /// often causing a change in state or side effects on the server.
  static const HttpMethod post = HttpMethod._('POST');

  /// The [put] method replaces all current representations of the
  /// target resource with the request payload.
  static const HttpMethod put = HttpMethod._('PUT');

  /// The [delete] method deletes the specified resource.
  static const HttpMethod delete = HttpMethod._('DELETE');

  /// The [patch] method is used to apply partial modifications to a resource.
  static const HttpMethod patch = HttpMethod._('PATCH');

  /// Taken from [BaseOptions]. The default methods that are considered
  /// to have a payload. Only for these methods a default content-type header is
  /// added, if no specified.
  static const allowedPayloadMethods = [post, put, patch, delete];

  static const _all = [get, head, post, put, patch, delete];

  final String name;

  bool get isAllowedPayloadMethod => allowedPayloadMethods.contains(this);

  factory HttpMethod.forName({required String name}) {
    return _all.firstWhere((m) => m.name == name);
  }

  const HttpMethod._(this.name);
}
