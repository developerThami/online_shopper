// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Price _$PriceFromJson(Map<String, dynamic> json) {
  return Price(
    value: json['value'] as String,
    currency: json['currency'] as String,
    convertedFromValue: json['convertedFromValue'] as String,
    convertedFromCurrency: json['convertedFromCurrency'] as String,
  );
}

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'value': instance.value,
      'currency': instance.currency,
      'convertedFromValue': instance.convertedFromValue,
      'convertedFromCurrency': instance.convertedFromCurrency,
    };
