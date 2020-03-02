import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ShippingServiceCost {
  String currencyId;
  String sValue;

  ShippingServiceCost({this.currencyId, this.sValue});

  ShippingServiceCost.fromJson(Map<String, dynamic> json) {
    currencyId = json['@currencyId'];
    sValue = json['__value__'];
  }
}
