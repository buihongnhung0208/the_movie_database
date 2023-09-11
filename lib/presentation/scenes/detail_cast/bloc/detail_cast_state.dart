part of 'detail_cast_cubit.dart';

class DetailCastState extends Equatable {
  const DetailCastState({
    required this.isLoading,
    required this.detailCast,
    required this.isLoadingImage,
    required this.listImage,
  });

  final bool isLoading;
  final PersonResponseObject detailCast;
final bool isLoadingImage;
  final List<ImageResponseObject> listImage;

  factory DetailCastState.initial() {
    return const DetailCastState(
      isLoading: false,
      detailCast: PersonResponseObject(),
      isLoadingImage: false,
      listImage: []
    );
  }

  DetailCastState copyWith({
    bool? isLoading,
    PersonResponseObject? detailCast,
    bool? isLoadingImage,
    List<ImageResponseObject>? listImage
  }) =>
      DetailCastState(
        isLoading: isLoading ?? this.isLoading,
        detailCast: detailCast ?? this.detailCast,
        isLoadingImage: isLoadingImage ?? this.isLoadingImage,
        listImage: listImage ?? this.listImage,
      );

  @override
  List<Object?> get props => [
    isLoading,
    detailCast,
    isLoadingImage,
    listImage
  ];
}
