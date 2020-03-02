import 'search_result_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result.g.dart';

@JsonSerializable()
class SearchResult {

  String count;
  List<SearchResultItem> item;

  SearchResult({this.count, this.item});
  factory SearchResult.fromJson(Map<String, dynamic> json) => _$SearchResultFromJson(json);
  Map<String,dynamic> toJson() => _$SearchResultToJson(this);
}
