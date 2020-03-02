import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class PrimaryCategory {
  List<String> categoryId;
  List<String> categoryName;

  PrimaryCategory({this.categoryId, this.categoryName});

  PrimaryCategory.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'].cast<String>();
    categoryName = json['categoryName'].cast<String>();
  }
}
