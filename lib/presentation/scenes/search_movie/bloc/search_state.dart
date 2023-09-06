part of 'search_cubit.dart';

class SearchState extends Equatable {
  const SearchState({
    required this.isLoading,
    required this.searchText,
    required this.listResult,
    required this.page,
  });

  final bool isLoading;
  final String searchText;
  final int page;
  final List<PersonResponseObject> listResult;

  factory SearchState.initial() {
    return const SearchState(
      isLoading: false,
      searchText: "",
      listResult: [],
      page: 1,
    );
  }

  SearchState copyWith({
    bool? isLoading,
    String? searchText,
    List<PersonResponseObject>? listResult,
    int? page,
  }) =>
      SearchState(
        isLoading: isLoading ?? this.isLoading,
        searchText: searchText ?? this.searchText,
        listResult: listResult ?? this.listResult,
        page: page ?? this.page,
      );

  @override
  List<Object?> get props => [
        isLoading,
        searchText,
        listResult,
        page,
      ];
}
