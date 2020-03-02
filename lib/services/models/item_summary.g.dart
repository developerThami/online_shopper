// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemSummary _$ItemSummaryFromJson(Map<String, dynamic> json) {
  return ItemSummary(
    itemId: json['itemId'] as String,
    title: json['title'] as String,
    price: json['price'] == null
        ? null
        : Price.fromJson(json['price'] as Map<String, dynamic>),
    itemHref: json['itemHref'] as String,
    seller: json['seller'] == null
        ? null
        : Seller.fromJson(json['seller'] as Map<String, dynamic>),
    shippingOptions: (json['shippingOptions'] as List)
        ?.map((e) => e == null
            ? null
            : ShippingOptions.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    buyingOptions:
        (json['buyingOptions'] as List)?.map((e) => e as String)?.toList(),
    itemWebUrl: json['itemWebUrl'] as String,
    itemLocation: json['itemLocation'] == null
        ? null
        : ItemLocation.fromJson(json['itemLocation'] as Map<String, dynamic>),
    categories: (json['categories'] as List)
        ?.map((e) =>
            e == null ? null : Categories.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adultOnly: json['adultOnly'] as bool,
    itemGroupHref: json['itemGroupHref'] as String,
    image: json['image'] == null
        ? null
        : Image.fromJson(json['image'] as Map<String, dynamic>),
    itemGroupType: json['itemGroupType'] as String,
    condition: json['condition'] as String,
    conditionId: json['conditionId'] as String,
  );
}

Map<String, dynamic> _$ItemSummaryToJson(ItemSummary instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'title': instance.title,
      'price': instance.price,
      'itemHref': instance.itemHref,
      'seller': instance.seller,
      'shippingOptions': instance.shippingOptions,
      'buyingOptions': instance.buyingOptions,
      'itemWebUrl': instance.itemWebUrl,
      'itemLocation': instance.itemLocation,
      'categories': instance.categories,
      'adultOnly': instance.adultOnly,
      'itemGroupHref': instance.itemGroupHref,
      'image': instance.image,
      'itemGroupType': instance.itemGroupType,
      'condition': instance.condition,
      'conditionId': instance.conditionId,
    };
