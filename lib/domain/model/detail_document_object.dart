import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_document/detail_document_object.freezed.dart';

part 'manage_document/detail_document_object.g.dart';

@freezed
class DetailDocumentObject with _$DetailDocumentObject {
  const factory DetailDocumentObject({
    @JsonKey(name: 'TrichYeu') @Default('') String abstract,
    @JsonKey(name: 'LoaiVanBan') @Default('') String typeDoc,
    @JsonKey(name: 'Status') @Default('') String status,
    @JsonKey(name: 'DonVi') @Default('') String department,
    @JsonKey(name: 'SoDienThoai') @Default('') String phone,
    @JsonKey(name: 'LoaiTrinh') @Default('') String typeSubmit,
    @JsonKey(name: 'Workflow') @Default('') String workflow,
    @JsonKey(name: 'Author') @Default('') String author,
    @JsonKey(name: 'AssignedTo') @Default('') String assignedTo,
    @JsonKey(name: 'Editor') @Default('') String editor,
    @JsonKey(name: 'ID') @Default('') String id,
    @JsonKey(name: 'Created') @Default('') String created,
    @JsonKey(name: 'Modified') @Default('') String modified,
    @JsonKey(name: 'Permission') @Default(0) num permission,
    @JsonKey(name: 'AuthorName') @Default('') String authorName,
    @JsonKey(name: 'AuthorID') @Default('') String authorID,
    @JsonKey(name: 'AssignedName') @Default('') String assignedName,
    @JsonKey(name: 'AssignedID') @Default('') String assignedID,
  }) = _DetailDocumentObject;

  factory DetailDocumentObject.fromJson(Map<String, dynamic> json) =>
      _$DetailDocumentObjectFromJson(json);
}
