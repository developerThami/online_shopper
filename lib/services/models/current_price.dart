import 'package:json_annotation/json_annotation.dart';

part 'current_price.g.dart';

@JsonSerializable()
class CurrentPrice {

  String currencyId;
  String sValue;

  CurrentPrice({this.currencyId, this.sValue});

  factory CurrentPrice.fromJson(Map<String, dynamic> json) => _$CurrentPriceFromJson(json);
  Map<String,dynamic> toJson() => _$CurrentPriceToJson(this);
}
