import 'package:online_shopper/services/models/item_summary.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_search_response.g.dart';

@JsonSerializable()
class ItemSearchResponse {

  String href;
  int total;
  String next;
  int limit;
  int offset;
  List<ItemSummary> itemSummaries;

  ItemSearchResponse(
      {this.href,
        this.total,
        this.next,
        this.limit,
        this.offset,
        this.itemSummaries});

  factory ItemSearchResponse.fromJson(Map<String, dynamic> json) => _$ItemSearchResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ItemSearchResponseToJson(this);

}














