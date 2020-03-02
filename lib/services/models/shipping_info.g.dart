// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingInfo _$ShippingInfoFromJson(Map<String, dynamic> json) {
  return ShippingInfo(
    shippingServiceCost: (json['shippingServiceCost'] as List)
        ?.map((e) => e == null
            ? null
            : ShippingServiceCost.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shippingType:
        (json['shippingType'] as List)?.map((e) => e as String)?.toList(),
    shipToLocations:
        (json['shipToLocations'] as List)?.map((e) => e as String)?.toList(),
    expeditedShipping:
        (json['expeditedShipping'] as List)?.map((e) => e as String)?.toList(),
    oneDayShippingAvailable: (json['oneDayShippingAvailable'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    handlingTime:
        (json['handlingTime'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ShippingInfoToJson(ShippingInfo instance) =>
    <String, dynamic>{
      'shippingServiceCost': instance.shippingServiceCost,
      'shippingType': instance.shippingType,
      'shipToLocations': instance.shipToLocations,
      'expeditedShipping': instance.expeditedShipping,
      'oneDayShippingAvailable': instance.oneDayShippingAvailable,
      'handlingTime': instance.handlingTime,
    };
