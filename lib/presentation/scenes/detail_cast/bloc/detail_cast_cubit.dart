import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_movie_database/api_service/core/authentication/detail-movie/detail_movie_params.dart';
import 'package:the_movie_database/api_service/core/authentication/detail_movie_api_input.dart';
import 'package:the_movie_database/domain/usecases/get_detail_cast_usecase.dart';
import 'package:the_movie_database/model/person_response_object/person_response_object.dart';

part 'detail_cast_state.dart';

class DetailCastCubit extends Cubit<DetailCastState> {
  DetailCastCubit(
    this._getDetailCastUseCase,
  ) : super(DetailCastState.initial());
  final GetDetailCastUseCase _getDetailCastUseCase;

  Future<void> getDetailCast({required String id}) async {
    emit(state.copyWith(isLoading: true));
    final getDetailInput = DetailAPIInput(
      const DetailMovieParams(),
      'person/$id',
    );
    final detailCast = await _getDetailCastUseCase.call(getDetailInput);

    detailCast.when(
      success: (detailObject) {
        print('detailObjectdetailObject $detailObject');
        emit(
          state.copyWith(
            isLoading: false,
            detailCast: detailObject,
          ),
        );
      },
      failure: (networkError) {
        emit(state.copyWith(isLoading: false));
      },
    );
  }

  Future<void> getData(String id) async {
    Future.wait([getDetailCast(id: id)]);
  }
}
