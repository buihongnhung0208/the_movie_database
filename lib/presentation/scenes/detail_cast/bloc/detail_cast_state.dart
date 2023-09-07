part of 'detail_cast_cubit.dart';

class DetailCastState extends Equatable {
  const DetailCastState({
    required this.isLoading,
    required this.detailCast,
  });

  final bool isLoading;
  final PersonResponseObject detailCast;

  factory DetailCastState.initial() {
    return const DetailCastState(
      isLoading: false,
      detailCast: PersonResponseObject(),
    );
  }

  DetailCastState copyWith({
    bool? isLoading,
    PersonResponseObject? detailCast,
  }) =>
      DetailCastState(
        isLoading: isLoading ?? this.isLoading,
        detailCast: detailCast ?? this.detailCast,
      );

  @override
  List<Object?> get props => [
    isLoading,
    detailCast
  ];
}
