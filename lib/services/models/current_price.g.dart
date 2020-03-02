// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentPrice _$CurrentPriceFromJson(Map<String, dynamic> json) {
  return CurrentPrice(
    currencyId: json['currencyId'] as String,
    sValue: json['sValue'] as String,
  );
}

Map<String, dynamic> _$CurrentPriceToJson(CurrentPrice instance) =>
    <String, dynamic>{
      'currencyId': instance.currencyId,
      'sValue': instance.sValue,
    };
