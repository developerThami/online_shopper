import 'package:json_annotation/json_annotation.dart';

part 'price.g.dart';

@JsonSerializable()
class Price {

  String value;
  String currency;
  String convertedFromValue;
  String convertedFromCurrency;

  Price(
      {this.value,
        this.currency,
        this.convertedFromValue,
        this.convertedFromCurrency});

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
  Map<String, dynamic> toJson() => _$PriceToJson(this);

}