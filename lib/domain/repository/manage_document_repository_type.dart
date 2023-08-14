import 'package:the_movie_database/data/wrappers/network_error.dart';
import 'package:the_movie_database/data/wrappers/result.dart';


abstract class ManageDocumentRepositoryType {
  Future<Result<List<dynamic>, NetworkError>> getListDocuments(
      ListDocumentsParams params);
}
