// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemSearchResponse _$ItemSearchResponseFromJson(Map<String, dynamic> json) {
  return ItemSearchResponse(
    href: json['href'] as String,
    total: json['total'] as int,
    next: json['next'] as String,
    limit: json['limit'] as int,
    offset: json['offset'] as int,
    itemSummaries: (json['itemSummaries'] as List)
        ?.map((e) =>
            e == null ? null : ItemSummary.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ItemSearchResponseToJson(ItemSearchResponse instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
      'next': instance.next,
      'limit': instance.limit,
      'offset': instance.offset,
      'itemSummaries': instance.itemSummaries,
    };
