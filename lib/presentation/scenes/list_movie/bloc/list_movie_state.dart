part of 'list_movie_cubit.dart';

class ListMovieState extends Equatable {
  const ListMovieState({required this.isLoading, required this.isEnd, required this.listMovies});

  final bool isLoading;
  final bool isEnd;
  final List<dynamic> listMovies;

  factory ListMovieState.initial() {
    return const ListMovieState(isLoading: false, isEnd: false, listMovies: []);
  }

  ListMovieState copyWith({bool? isLoading, bool? isEnd, List<dynamic>? listMovies}) =>
      ListMovieState(
          isLoading: isLoading ?? this.isLoading,
          isEnd: isEnd ?? this.isEnd,
          listMovies: listMovies ?? this.listMovies);

  @override
  List<Object?> get props => [
    isLoading,
    isEnd,
    listMovies,
  ];
}