import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_person_params.freezed.dart';

part 'search_person_params.g.dart';

@freezed
class SearchPersonParams with _$SearchPersonParams {
  const SearchPersonParams._();

  const factory SearchPersonParams({
    @Default('en-US') String language,
    @Default('') String query,
    @Default(false) bool include_adult,
    @Default(1) int page,
  }) = _SearchPersonParams;

  factory SearchPersonParams.fromJson(Map<String, dynamic> json) =>
      _$SearchPersonParamsFromJson(json);

  Map<String, dynamic> toDeepJson() => <String, dynamic>{
        'language': language,
        'page': page,
        'query': query,
        'include_adult': include_adult
      };
}
