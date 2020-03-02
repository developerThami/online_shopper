import 'current_price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'selling_status.g.dart';

@JsonSerializable()
class SellingStatus {

  List<CurrentPrice> currentPrice;
  List<String> bidCount;
  List<String> sellingState;
  List<String> timeLeft;

  SellingStatus({this.currentPrice, this.bidCount, this.sellingState, this.timeLeft});

  factory SellingStatus.fromJson(Map<String, dynamic> json) => _$SellingStatusFromJson(json);
  Map<String,dynamic> toJson() => _$SellingStatusToJson(this);
}