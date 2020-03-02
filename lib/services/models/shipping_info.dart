import 'shipping_service_cost.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shipping_info.g.dart';

@JsonSerializable()
class ShippingInfo {
  List<ShippingServiceCost> shippingServiceCost;
  List<String> shippingType;
  List<String> shipToLocations;
  List<String> expeditedShipping;
  List<String> oneDayShippingAvailable;
  List<String> handlingTime;

  ShippingInfo(
      {this.shippingServiceCost,
        this.shippingType,
        this.shipToLocations,
        this.expeditedShipping,
        this.oneDayShippingAvailable,
        this.handlingTime});

  factory ShippingInfo.fromJson(Map<String, dynamic> json) => _$ShippingInfoFromJson(json);
  Map<String,dynamic> toJson() => _$ShippingInfoToJson(this);
}