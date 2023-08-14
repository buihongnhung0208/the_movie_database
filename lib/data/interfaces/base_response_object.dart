import 'package:equatable/equatable.dart';

class BaseResponseObject<T> extends Equatable {
  const BaseResponseObject({this.data});

  final T? data;

  @override
  List<Object?> get props => [data];
}
