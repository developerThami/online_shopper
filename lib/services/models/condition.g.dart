// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return Condition(
    conditionId:
        (json['conditionId'] as List)?.map((e) => e as String)?.toList(),
    conditionDisplayName: (json['conditionDisplayName'] as List)
        ?.map((e) => e as String)
        ?.toList(),
  );
}

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
      'conditionId': instance.conditionId,
      'conditionDisplayName': instance.conditionDisplayName,
    };
