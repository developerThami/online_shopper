// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingInfo _$ListingInfoFromJson(Map<String, dynamic> json) {
  return ListingInfo(
    bestOfferEnabled:
        (json['bestOfferEnabled'] as List)?.map((e) => e as String)?.toList(),
    buyItNowAvailable:
        (json['buyItNowAvailable'] as List)?.map((e) => e as String)?.toList(),
    startTime: (json['startTime'] as List)?.map((e) => e as String)?.toList(),
    endTime: (json['endTime'] as List)?.map((e) => e as String)?.toList(),
    listingType:
        (json['listingType'] as List)?.map((e) => e as String)?.toList(),
    gift: (json['gift'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ListingInfoToJson(ListingInfo instance) =>
    <String, dynamic>{
      'bestOfferEnabled': instance.bestOfferEnabled,
      'buyItNowAvailable': instance.buyItNowAvailable,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'listingType': instance.listingType,
      'gift': instance.gift,
    };
