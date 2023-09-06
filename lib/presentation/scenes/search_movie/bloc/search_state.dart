part of 'search_cubit.dart';

class SearchState extends Equatable {
  const SearchState({
    required this.isLoading,
    required this.isEnd,
    required this.listMovies,
    required this.page,
  });

  final bool isLoading;
  final bool isEnd;
  final int page;
  final List<MovieResponseObject> listMovies;

  factory SearchState.initial() {
    return const SearchState(
      isLoading: false,
      isEnd: false,
      listMovies: [],
      page: 1,
    );
  }

  SearchState copyWith({
    bool? isLoading,
    bool? isEnd,
    List<MovieResponseObject>? listMovies,
    int? page,
  }) =>
      SearchState(
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
