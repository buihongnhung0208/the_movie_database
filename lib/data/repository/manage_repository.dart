import 'package:the_movie_database/data/client/manage_client.dart';
import 'package:the_movie_database/domain/repository/manage_repository_type.dart';

class ManageRepository implements ManageRepositoryType {
  const ManageRepository(this._networkExecutor);

  final CoreNetworkExecutor _networkExecutor;

}
