part of 'detail_movie_cubit.dart';

class DetailMovieState extends Equatable {
  const DetailMovieState({required this.isLoading, required this.detailMovie});

  final bool isLoading;
  final MovieResponseObject detailMovie;

  factory DetailMovieState.initial() {
    return const DetailMovieState(
      isLoading: false,
      detailMovie: MovieResponseObject(),
    );
  }

  DetailMovieState copyWith({
    bool? isLoading,
    MovieResponseObject? detailMovie,
  }) =>
      DetailMovieState(
        isLoading: isLoading ?? this.isLoading,
        detailMovie: detailMovie ?? this.detailMovie,
      );

  @override
  List<Object?> get props => [
    isLoading,
    detailMovie
  ];
}
