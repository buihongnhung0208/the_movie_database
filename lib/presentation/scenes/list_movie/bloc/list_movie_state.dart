part of 'list_movie_cubit.dart';

class ListMovieState extends Equatable {
  const ListMovieState({
    required this.isLoading,
    required this.isEnd,
    required this.listMovies,
    required this.page,
  });

  final bool isLoading;
  final bool isEnd;
  final int page;
  final List<MovieResponseObject> listMovies;

  factory ListMovieState.initial() {
    return const ListMovieState(
      isLoading: false,
      isEnd: false,
      listMovies: [],
      page: 1,
    );
  }

  ListMovieState copyWith({
    bool? isLoading,
    bool? isEnd,
    List<MovieResponseObject>? listMovies,
    int? page,
  }) =>
      ListMovieState(
        isLoading: isLoading ?? this.isLoading,
        isEnd: isEnd ?? this.isEnd,
        listMovies: listMovies ?? this.listMovies,
        page: page ?? this.page,
      );

  @override
  List<Object?> get props => [
        isLoading,
        isEnd,
        listMovies,
        page,
      ];
}
