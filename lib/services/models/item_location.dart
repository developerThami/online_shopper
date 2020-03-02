import 'package:json_annotation/json_annotation.dart';

part 'item_location.g.dart';

@JsonSerializable()
class ItemLocation {

  String country;

  ItemLocation({this.country});

  factory ItemLocation.fromJson(Map<String, dynamic> json) => _$ItemLocationFromJson(json);
  Map<String, dynamic> toJson() => _$ItemLocationToJson(this);

}