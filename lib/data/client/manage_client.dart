import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_client.freezed.dart';

@freezed
class ManageClient extends OnPremiseClient with _$ManageClient {
  ManageClient._() : super();

  @override
  // TODO: implement body
  get body => when(
      );

  @override
  // TODO: implement queryParameters
  Map<String, dynamic>? get queryParameters => when(
      );

  @override
  // TODO: implement method
  String get method => when(
      );

  @override
  // TODO: implement path
  String get path => when(
      );
}
