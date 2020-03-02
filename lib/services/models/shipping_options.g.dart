// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingOptions _$ShippingOptionsFromJson(Map<String, dynamic> json) {
  return ShippingOptions(
    shippingCostType: json['shippingCostType'] as String,
    shippingCost: json['shippingCost'] == null
        ? null
        : Price.fromJson(json['shippingCost'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ShippingOptionsToJson(ShippingOptions instance) =>
    <String, dynamic>{
      'shippingCostType': instance.shippingCostType,
      'shippingCost': instance.shippingCost,
    };
