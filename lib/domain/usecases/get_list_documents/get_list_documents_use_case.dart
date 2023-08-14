

import 'package:the_movie_database/data/wrappers/network_error.dart';
import 'package:the_movie_database/data/wrappers/result.dart';
import 'package:the_movie_database/domain/repository/manage_document_repository_type.dart';

class GetListDocumentsUserCase
    implements
        UseCase<ListDocumentsParams, Result<List<dynamic>, NetworkError>> {
  const GetListDocumentsUserCase(this._repository);

  final ManageDocumentRepositoryType _repository;

  @override
  Future<Result<List<dynamic>, NetworkError>> call(
          ListDocumentsParams params) =>
      _repository.getListDocuments(params);
}


