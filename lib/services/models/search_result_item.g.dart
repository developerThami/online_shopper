// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultItem _$SearchResultItemFromJson(Map<String, dynamic> json) {
  return SearchResultItem(
    itemId: (json['itemId'] as List)?.map((e) => e as String)?.toList(),
    title: (json['title'] as List)?.map((e) => e as String)?.toList(),
    globalId: (json['globalId'] as List)?.map((e) => e as String)?.toList(),
    primaryCategory: (json['primaryCategory'] as List)
        ?.map((e) => e == null
            ? null
            : PrimaryCategory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    viewItemURL:
        (json['viewItemURL'] as List)?.map((e) => e as String)?.toList(),
    paymentMethod:
        (json['paymentMethod'] as List)?.map((e) => e as String)?.toList(),
    autoPay: (json['autoPay'] as List)?.map((e) => e as String)?.toList(),
    postalCode: (json['postalCode'] as List)?.map((e) => e as String)?.toList(),
    location: (json['location'] as List)?.map((e) => e as String)?.toList(),
    country: (json['country'] as List)?.map((e) => e as String)?.toList(),
    shippingInfo: (json['shippingInfo'] as List)
        ?.map((e) =>
            e == null ? null : ShippingInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sellingStatus: (json['sellingStatus'] as List)
        ?.map((e) => e == null
            ? null
            : SellingStatus.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    listingInfo: (json['listingInfo'] as List)
        ?.map((e) =>
            e == null ? null : ListingInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    returnsAccepted:
        (json['returnsAccepted'] as List)?.map((e) => e as String)?.toList(),
    condition: (json['condition'] as List)
        ?.map((e) =>
            e == null ? null : Condition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isMultiVariationListing: (json['isMultiVariationListing'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    topRatedListing:
        (json['topRatedListing'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$SearchResultItemToJson(SearchResultItem instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'title': instance.title,
      'globalId': instance.globalId,
      'primaryCategory': instance.primaryCategory,
      'viewItemURL': instance.viewItemURL,
      'paymentMethod': instance.paymentMethod,
      'autoPay': instance.autoPay,
      'postalCode': instance.postalCode,
      'location': instance.location,
      'country': instance.country,
      'shippingInfo': instance.shippingInfo,
      'sellingStatus': instance.sellingStatus,
      'listingInfo': instance.listingInfo,
      'returnsAccepted': instance.returnsAccepted,
      'condition': instance.condition,
      'isMultiVariationListing': instance.isMultiVariationListing,
      'topRatedListing': instance.topRatedListing,
    };
