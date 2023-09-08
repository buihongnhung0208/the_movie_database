import 'package:mg_api_service/helper/http_method.dart';
import 'package:the_movie_database/api_service/core/core_api_input.dart';

class ImagesPersonAPIInput extends CoreAPIInput {
  ImagesPersonAPIInput(this.id)
      : super(
          path: 'person/$id/images',
          method: HTTPMethod.get,
          requireAccessToken: true,
        );

  final String id;
}
