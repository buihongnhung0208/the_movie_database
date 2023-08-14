import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_document_client.freezed.dart';

@freezed
class ManageDocumentClient extends OnPremiseClient with _$ManageDocumentClient {
  ManageDocumentClient._() : super();

  factory ManageDocumentClient.getListDocuments(ListDocumentsParams params) = _GetListDocuments;

  @override
  // TODO: implement body
  get body => when(
        getListDocuments: (params) => params.toNullableJson(),
      );

  @override
  // TODO: implement queryParameters
  Map<String, dynamic>? get queryParameters => when(
        getListDocuments: (params) => params.toNullableJson(),
      );

  @override
  // TODO: implement method
  String get method => when(
        getListDocuments: (_) => HttpMethod.post.name,
      );

  @override
  // TODO: implement path
  String get path => when(
        getListDocuments: (_) => 'employee-management-service/v1.0/intranet/edocs',
      );
}
