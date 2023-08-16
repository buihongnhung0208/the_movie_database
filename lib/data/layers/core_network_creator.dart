import 'package:dio/dio.dart';
import 'package:the_movie_database/data/layers/network_creator.dart';

class CoreNetworkCreator extends BaseNetworkCreator {
  CoreNetworkCreator(super.dio);

  @override
  Future<void> preRequest(RequestOptions options) async {
    //TODO
    options.headers['Authorization'] = 'Bearer ';
  }
}
