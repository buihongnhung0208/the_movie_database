import 'package:the_movie_database/data/client/manage_client.dart';
import 'package:the_movie_database/data/layers/core_network_executor.dart';
import 'package:the_movie_database/data/wrappers/network_error.dart';
import 'package:the_movie_database/data/wrappers/result.dart';
import 'package:the_movie_database/domain/model/core_response_object/core_response_object.dart';
import 'package:the_movie_database/domain/model/list_response_object/list_response_object.dart';
import 'package:the_movie_database/domain/params/list_movies_params.dart';
import 'package:the_movie_database/domain/repository/manage_repository_type.dart';

import '../../domain/model/json_object/json_object.dart';

class ManageRepository implements ManageRepositoryType {
  const ManageRepository(this._networkExecutor);

  final CoreNetworkExecutor _networkExecutor;
  @override
  Future<Result<List<ListResponseObject>, NetworkError>> getListPopular(ListMoviesParams params) async {
    final result = await _networkExecutor.execute(
      route: ManageClient.getListPopular(params),
      jsonDecoder: (json) => CoreResponseObject<JSONObject>.fromJson(
        json,
            (json) => {
          'data': json,
        },
      ),
    );
    return result.when(
      success: (jsonObject) {
        try {
          return Result.success(List<ListResponseObject>.from(jsonObject?['data'].map((item) {
            return item;
          }).toList()));
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

}
