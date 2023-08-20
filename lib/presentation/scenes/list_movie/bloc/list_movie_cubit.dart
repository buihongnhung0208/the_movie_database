import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_movie_database/domain/params/list_movies_params.dart';
import 'package:the_movie_database/domain/usecases/get_list_popular/get_list_popular_use_case.dart';

part 'list_movie_state.dart';

class ListMovieCubit extends Cubit<ListMovieState> {
  ListMovieCubit(this._getListPopularUserCase) : super(ListMovieState.initial());

  final GetListPopularUserCase _getListPopularUserCase;

  Future<void> getListPopular() async {
    emit(
      state.copyWith(
        isLoading: true,
        isEnd: false,
      ),
    );
    final list = await _getListPopularUserCase.call(
      ListMoviesParams(),
    );
    list.when(
      success: (listObject) {
        try {
          print("------listObject $listObject");
          emit(
            state.copyWith(
              isLoading: false,
              listMovies: [...listObject],
              // isEndMust: listDocumentObject.length < LIMIT,
            ),
          );
        } catch (e) {
          emit(state.copyWith(isLoading: false));
        }
      },
      failure: (networkError) {
        emit(state.copyWith(isLoading: false));
      },
    );
  }
  Future<void> getData() async {
    Future.wait([getListPopular()]);
  }
}

