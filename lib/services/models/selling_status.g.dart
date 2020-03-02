// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selling_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SellingStatus _$SellingStatusFromJson(Map<String, dynamic> json) {
  return SellingStatus(
    currentPrice: (json['currentPrice'] as List)
        ?.map((e) =>
            e == null ? null : CurrentPrice.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bidCount: (json['bidCount'] as List)?.map((e) => e as String)?.toList(),
    sellingState:
        (json['sellingState'] as List)?.map((e) => e as String)?.toList(),
    timeLeft: (json['timeLeft'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$SellingStatusToJson(SellingStatus instance) =>
    <String, dynamic>{
      'currentPrice': instance.currentPrice,
      'bidCount': instance.bidCount,
      'sellingState': instance.sellingState,
      'timeLeft': instance.timeLeft,
    };
