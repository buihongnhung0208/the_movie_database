import 'package:dio/dio.dart';
import 'package:the_movie_database/data/layers/network_creator.dart';

class CoreNetworkCreator extends BaseNetworkCreator {
  CoreNetworkCreator(super.dio);

  @override
  Future<void> preRequest(RequestOptions options) async {
    //TODO
    options.headers['Authorization'] = 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkMGEwZTI5ZjdlYjljNTcwNGRlYWNmNDM4YzM5OTQ0OCIsInN1YiI6IjVkMzgxZDVhNjBjNTFkNzg2ODgyZTUyYyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.FrKyB8DdOdNuwQUaonAqE4S8YTK2cKq3ABQnlwq_fWM';
  }
}
