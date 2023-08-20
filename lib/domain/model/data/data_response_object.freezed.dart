// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataResponseObject _$DataResponseObjectFromJson(Map<String, dynamic> json) {
  return _DataResponseObject.fromJson(json);
}

/// @nodoc
mixin _$DataResponseObject {
  String get encryptedData => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataResponseObjectCopyWith<DataResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataResponseObjectCopyWith<$Res> {
  factory $DataResponseObjectCopyWith(
          DataResponseObject value, $Res Function(DataResponseObject) then) =
      _$DataResponseObjectCopyWithImpl<$Res, DataResponseObject>;
  @useResult
  $Res call({String encryptedData, String signature});
}

/// @nodoc
class _$DataResponseObjectCopyWithImpl<$Res, $Val extends DataResponseObject>
    implements $DataResponseObjectCopyWith<$Res> {
  _$DataResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryptedData = null,
    Object? signature = null,
  }) {
    return _then(_value.copyWith(
      encryptedData: null == encryptedData
          ? _value.encryptedData
          : encryptedData // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataResponseObjectCopyWith<$Res>
    implements $DataResponseObjectCopyWith<$Res> {
  factory _$$_DataResponseObjectCopyWith(_$_DataResponseObject value,
          $Res Function(_$_DataResponseObject) then) =
      __$$_DataResponseObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String encryptedData, String signature});
}

/// @nodoc
class __$$_DataResponseObjectCopyWithImpl<$Res>
    extends _$DataResponseObjectCopyWithImpl<$Res, _$_DataResponseObject>
    implements _$$_DataResponseObjectCopyWith<$Res> {
  __$$_DataResponseObjectCopyWithImpl(
      _$_DataResponseObject _value, $Res Function(_$_DataResponseObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryptedData = null,
    Object? signature = null,
  }) {
    return _then(_$_DataResponseObject(
      encryptedData: null == encryptedData
          ? _value.encryptedData
          : encryptedData // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataResponseObject implements _DataResponseObject {
  const _$_DataResponseObject({this.encryptedData = '', this.signature = ''});

  factory _$_DataResponseObject.fromJson(Map<String, dynamic> json) =>
      _$$_DataResponseObjectFromJson(json);

  @override
  @JsonKey()
  final String encryptedData;
  @override
  @JsonKey()
  final String signature;

  @override
  String toString() {
    return 'DataResponseObject(encryptedData: $encryptedData, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataResponseObject &&
            (identical(other.encryptedData, encryptedData) ||
                other.encryptedData == encryptedData) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, encryptedData, signature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataResponseObjectCopyWith<_$_DataResponseObject> get copyWith =>
      __$$_DataResponseObjectCopyWithImpl<_$_DataResponseObject>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataResponseObjectToJson(
      this,
    );
  }
}

abstract class _DataResponseObject implements DataResponseObject {
  const factory _DataResponseObject(
      {final String encryptedData,
      final String signature}) = _$_DataResponseObject;

  factory _DataResponseObject.fromJson(Map<String, dynamic> json) =
      _$_DataResponseObject.fromJson;

  @override
  String get encryptedData;
  @override
  String get signature;
  @override
  @JsonKey(ignore: true)
  _$$_DataResponseObjectCopyWith<_$_DataResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}
