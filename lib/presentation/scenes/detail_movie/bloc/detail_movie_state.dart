part of 'detail_movie_cubit.dart';

class DetailMovieState extends Equatable {
  const DetailMovieState({
    required this.isLoading,
    required this.detailMovie,
    required this.isLoadinglistRecommendations,
    required this.listRecommendations,
  });

  final bool isLoading;
  final MovieResponseObject detailMovie;
  final bool isLoadinglistRecommendations;
  final List<MovieResponseObject> listRecommendations;

  factory DetailMovieState.initial() {
    return const DetailMovieState(
      isLoading: false,
      detailMovie: MovieResponseObject(),
      isLoadinglistRecommendations: false,
      listRecommendations: [],
    );
  }

  DetailMovieState copyWith(
          {bool? isLoading,
          MovieResponseObject? detailMovie,
          bool? isLoadinglistRecommendations,
          List<MovieResponseObject>? listRecommendations}) =>
      DetailMovieState(
        isLoading: isLoading ?? this.isLoading,
        detailMovie: detailMovie ?? this.detailMovie,
        isLoadinglistRecommendations:
            isLoadinglistRecommendations ?? this.isLoadinglistRecommendations,
        listRecommendations: listRecommendations ?? this.listRecommendations,
      );

  @override
  List<Object?> get props => [
        isLoading,
        detailMovie,
        isLoadinglistRecommendations,
        listRecommendations,
      ];
}
