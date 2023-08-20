import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_database/data/client/base/on_premise_client.dart';
import 'package:the_movie_database/data/layers/http_method.dart';
import 'package:the_movie_database/domain/params/list_movies_params.dart';

part 'manage_client.freezed.dart';

@freezed
class ManageClient extends OnPremiseClient with _$ManageClient {
  ManageClient._() : super();
  factory ManageClient.getListPopular(ListMoviesParams params) = _GetListPopular;

  @override
  // TODO: implement body
  get body => when(
    getListPopular: (params) => null,
  );

  @override
  // TODO: implement queryParameters
  Map<String, dynamic>? get queryParameters => when(
    getListPopular: (params) => params.toJson(),
  );

  @override
  // TODO: implement method
  String get method => when(
    getListPopular: (_) => HttpMethod.get.name,
  );

  @override
  // TODO: implement path
  String get path => when(
    getListPopular: (_) => '/movie/popular',
  );
}
