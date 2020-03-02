import 'package:json_annotation/json_annotation.dart';

part 'condition.g.dart';

@JsonSerializable()
class Condition {

  List<String> conditionId;
  List<String> conditionDisplayName;

  Condition({this.conditionId, this.conditionDisplayName});

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}