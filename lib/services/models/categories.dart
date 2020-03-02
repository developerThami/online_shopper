import 'package:json_annotation/json_annotation.dart';

part 'categories.g.dart';

@JsonSerializable()
class Categories {

  String categoryId;

  Categories({this.categoryId});

  factory Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriesToJson(this);

}