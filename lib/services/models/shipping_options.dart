import 'price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shipping_options.g.dart';

@JsonSerializable()
class ShippingOptions {

  String shippingCostType;
  Price shippingCost;

  ShippingOptions({this.shippingCostType, this.shippingCost});

  factory ShippingOptions.fromJson(Map<String, dynamic> json) => _$ShippingOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$ShippingOptionsToJson(this);

}