
import 'package:the_movie_database/data/client/manage_document_client.dart';
import 'package:the_movie_database/data/layers/core_network_executor.dart';
import 'package:the_movie_database/data/wrappers/network_error.dart';
import 'package:the_movie_database/data/wrappers/result.dart';
import 'package:the_movie_database/domain/model/core_response_object/core_response_object.dart';
import 'package:the_movie_database/domain/model/json_object/json_object.dart';
import 'package:the_movie_database/domain/repository/manage_document_repository_type.dart';

class ManageDocumentRepository implements ManageDocumentRepositoryType {
  const ManageDocumentRepository(this._networkExecutor);

  final CoreNetworkExecutor _networkExecutor;

  @override
  Future<Result<List<dynamic>, NetworkError>> getListDocuments(ListDocumentsParams params) async {
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.getListDocuments(params),
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
          return Result.success(List<dynamic>.from(jsonObject?['data'].map((item) {
            if (item['Priority'] is num) {
              return MustApproveDocument.fromJson(item);
            } else {
              return DocumentObject.fromJson(item);
            }
          }).toList()));
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<List<MustApproveDocument>, NetworkError>> getListMustApproveDocuments(
      ListDocumentsParams params) async {
    // TODO: implement getListMustApproveDocuments
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.getListDocuments(params),
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
          return Result.success(
            List<MustApproveDocument>.from(
              jsonObject?['data']
                  .map(
                    (item) => MustApproveDocument.fromJson(item),
                  )
                  .toList(),
            ),
          );
        } catch (e) {
          return Result.failure(
            NetworkError.type(
              error: e.toString(),
            ),
          );
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  // TODO: change map a list
  @override
  Future<Result<List<DepartmentObject>, NetworkError>> getListDepartment(JSONObject params) async {
    // TODO: implement getListDepartment
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.getListDepartment(params),
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
          return Result.success(List<DepartmentObject>.from(
              jsonObject?['data'].map((item) => DepartmentObject.fromJson(item)).toList()));
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<List<UserInfo>, NetworkError>> getListUser(ListUserParams params) async {
    // TODO: implement getListUser
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.getListUser(params),
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
          return Result.success(List<UserInfo>.from(
              jsonObject?['data'].map((item) => UserInfo.fromJson(item)).toList()));
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<JSONObject, NetworkError>> submit(SubmitDocumentParams params) async {
    // TODO: implement submit
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.submitDocument(params),
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
          return Result.success(jsonObject!);
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<DetailDocumentObject, NetworkError>> getDetailDocument(CommonParams params) async {
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.getDetailDocument(params),
      jsonDecoder: (json) => CoreResponseObject<JSONObject>.fromJson(
        json,
        (json) => json as JSONObject,
      ),
    );

    return result.when(
      success: (jsonObject) {
        try {
          return Result.success(DetailDocumentObject.fromJson(jsonObject ?? {}));
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<List<DraftDocumentObject>, NetworkError>> getListDraftDocument(
      CommonParams params) async {
    // TODO: implement getListDepartment
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.getListDraftDocument(params),
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
          return Result.success(List<DraftDocumentObject>.from(
              jsonObject?['data'].map((item) => DraftDocumentObject.fromJson(item)).toList()));
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<List<TransferInformationObject>, NetworkError>> getTransferInformation(
      CommonParams params) async {
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.getTransferInformation(params),
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
          return Result.success(List<TransferInformationObject>.from(jsonObject?['data']
              .map((item) => TransferInformationObject.fromJson(item))
              .toList()));
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  Future<Result<List<FeedbackObject>, NetworkError>> getListFeedbacks(CommonParams params) async {
    // TODO: implement getListDepartment
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.getListFeedbacks(params),
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
          return Result.success(List<FeedbackObject>.from(
              jsonObject?['data'].map((item) => FeedbackObject.fromJson(item)).toList()));
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<List<BtnActionObject>, NetworkError>> getListBtnActions(CommonParams params) async {
    // TODO: implement getListDepartment
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.getBtnActions(params),
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
          return Result.success(List<BtnActionObject>.from(
              jsonObject?['data'].map((item) => BtnActionObject.fromJson(item)).toList()));
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<List<DocFeedbackObject>, NetworkError>> getListDocFeedbacks(
      CommonParams params) async {
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.getListDocFeedbacks(params),
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
          return Result.success(List<DocFeedbackObject>.from(
              jsonObject?['data'].map((item) => DocFeedbackObject.fromJson(item)).toList()));
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  Future<Result<Map<String, dynamic>, NetworkError>> downloadFilefb(
      DownloadFileParams params) async {
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.downloadFilefb(params),
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
          return Result.success(jsonObject as JSONObject);
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<Map<String, dynamic>, NetworkError>> getHistory(HistoryUserParams params) async {
    // TODO: implement getHistory
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.getHistory(params),
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
          return Result.success(jsonObject!);
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<Map<String, dynamic>, NetworkError>> uploadFile(FormData data) async {
    // TODO: implement uploadFile
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.uploadFile(data),
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
          return Result.success(jsonObject!);
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<Map<String, dynamic>, NetworkError>> addFeedback(AddFeedbackParams params) async {
    final result = await _networkExecutor.execute(
      route: ManageDocumentClient.addFeedback(params),
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
          return Result.success(jsonObject ?? {});
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }
}
