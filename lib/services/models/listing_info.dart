import 'package:json_annotation/json_annotation.dart';

part 'listing_info.g.dart';

@JsonSerializable()
class ListingInfo {

  List<String> bestOfferEnabled;
  List<String> buyItNowAvailable;
  List<String> startTime;
  List<String> endTime;
  List<String> listingType;
  List<String> gift;

  ListingInfo({this.bestOfferEnabled, this.buyItNowAvailable, this.startTime, this.endTime, this.listingType, this.gift});

  factory ListingInfo.fromJson(Map<String, dynamic> json) => _$ListingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ListingInfoToJson(this);
}