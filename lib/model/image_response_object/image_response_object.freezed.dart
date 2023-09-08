// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageResponseObject _$ImageResponseObjectFromJson(Map<String, dynamic> json) {
  return _ImageResponseObject.fromJson(json);
}

/// @nodoc
mixin _$ImageResponseObject {
  @JsonKey(name: 'file_path')
  String get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageResponseObjectCopyWith<ImageResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageResponseObjectCopyWith<$Res> {
  factory $ImageResponseObjectCopyWith(
          ImageResponseObject value, $Res Function(ImageResponseObject) then) =
      _$ImageResponseObjectCopyWithImpl<$Res, ImageResponseObject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_path') String filePath,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height});
}

/// @nodoc
class _$ImageResponseObjectCopyWithImpl<$Res, $Val extends ImageResponseObject>
    implements $ImageResponseObjectCopyWith<$Res> {
  _$ImageResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageResponseObjectCopyWith<$Res>
    implements $ImageResponseObjectCopyWith<$Res> {
  factory _$$_ImageResponseObjectCopyWith(_$_ImageResponseObject value,
          $Res Function(_$_ImageResponseObject) then) =
      __$$_ImageResponseObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_path') String filePath,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height});
}

/// @nodoc
class __$$_ImageResponseObjectCopyWithImpl<$Res>
    extends _$ImageResponseObjectCopyWithImpl<$Res, _$_ImageResponseObject>
    implements _$$_ImageResponseObjectCopyWith<$Res> {
  __$$_ImageResponseObjectCopyWithImpl(_$_ImageResponseObject _value,
      $Res Function(_$_ImageResponseObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$_ImageResponseObject(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageResponseObject implements _ImageResponseObject {
  const _$_ImageResponseObject(
      {@JsonKey(name: 'file_path') this.filePath = '',
      @JsonKey(name: 'width') this.width = 0,
      @JsonKey(name: 'height') this.height = 0});

  factory _$_ImageResponseObject.fromJson(Map<String, dynamic> json) =>
      _$$_ImageResponseObjectFromJson(json);

  @override
  @JsonKey(name: 'file_path')
  final String filePath;
  @override
  @JsonKey(name: 'width')
  final int width;
  @override
  @JsonKey(name: 'height')
  final int height;

  @override
  String toString() {
    return 'ImageResponseObject(filePath: $filePath, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageResponseObject &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filePath, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageResponseObjectCopyWith<_$_ImageResponseObject> get copyWith =>
      __$$_ImageResponseObjectCopyWithImpl<_$_ImageResponseObject>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageResponseObjectToJson(
      this,
    );
  }
}

abstract class _ImageResponseObject implements ImageResponseObject {
  const factory _ImageResponseObject(
      {@JsonKey(name: 'file_path') final String filePath,
      @JsonKey(name: 'width') final int width,
      @JsonKey(name: 'height') final int height}) = _$_ImageResponseObject;

  factory _ImageResponseObject.fromJson(Map<String, dynamic> json) =
      _$_ImageResponseObject.fromJson;

  @override
  @JsonKey(name: 'file_path')
  String get filePath;
  @override
  @JsonKey(name: 'width')
  int get width;
  @override
  @JsonKey(name: 'height')
  int get height;
  @override
  @JsonKey(ignore: true)
  _$$_ImageResponseObjectCopyWith<_$_ImageResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}
