import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_movie_database/api_service/core/authentication/search-person/search_person_params.dart';
import 'package:the_movie_database/api_service/core/authentication/search_person_api_input.dart';
import 'package:the_movie_database/domain/usecases/search_person_usecase.dart';
import 'package:the_movie_database/model/person_response_object/person_response_object.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._searchPersonUseCase) : super(SearchState.initial());
  final SearchPersonUseCase _searchPersonUseCase;

  Future<void> searchPerson({int page = 1, String text = ""}) async {
    print('pagepage $page $text');
    emit(
      state.copyWith(
        isLoading: true,
        searchText: text.isEmpty ? state.searchText : text,
        page: page,
      ),
    );

    final searchPersonInput = SearchPersonAPIInput(
      SearchPersonParams(page: page, query: text.isEmpty ? state.searchText : text),
    );
    final list = await _searchPersonUseCase.call(searchPersonInput);

    list.when(
      success: (listObject) {
        emit(
          state.copyWith(
            isLoading: false,
            listResult: page == 1 ? listObject.results : [...state.listResult, ...listObject.results],
            page: listObject.page + 1,
          ),
        );
      },
      failure: (networkError) {
        emit(state.copyWith(isLoading: false));
      },
    );
  }

  void setLoadMore() {
    if (state.isLoading == false) searchPerson(page: state.page);
  }
}
