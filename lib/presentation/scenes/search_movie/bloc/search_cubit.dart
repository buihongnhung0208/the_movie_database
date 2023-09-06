import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_movie_database/api_service/core/authentication/list-movies/list_movies_params.dart';
import 'package:the_movie_database/api_service/core/authentication/list_movies_api_input.dart';
import 'package:the_movie_database/domain/usecases/get_list_movies_usecase.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';
import 'package:the_movie_database/utils/utils.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchState.initial());
  // final GetSearchsUseCase _getSearchsUseCase;

  Future<void> getSearch({int page = 1}) async {
    emit(
      state.copyWith(
        isLoading: true,
        isEnd: false,
        page: page,
      ),
    );

    // final getListInput = SearchsAPIInput(
    //   SearchsParams(page: page),
    //   url,
    // );
    // final listMovies = await _getSearchsUseCase.call(getListInput);
    //
    // listMovies.when(
    //   success: (listObject) {
    //     try {
    //       emit(
    //         state.copyWith(
    //           isLoading: false,
    //           listMovies: [...state.listMovies, ...listObject.results],
    //           page: listObject.page + 1,
    //         ),
    //       );
    //       print(state.listMovies);
    //     } catch (e) {
    //       emit(state.copyWith(isLoading: false));
    //     }
    //   },
    //   failure: (networkError) {
    //     emit(state.copyWith(isLoading: false));
    //   },
    // );
  }

  void setLoadMore() {
    if (state.isLoading == false) getSearch(page: state.page);
  }

  void refreshList() {
    if (state.isLoading == false) getSearch(page: 1);
  }
}
