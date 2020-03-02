import 'package:json_annotation/json_annotation.dart';

import 'shipping_options.dart';
import 'price.dart';
import 'seller.dart';
import 'item_location.dart';
import 'categories.dart';
import 'image.dart';

part 'item_summary.g.dart';

@JsonSerializable()
class ItemSummary {

  String itemId;
  String title;
  Price price;
  String itemHref;
  Seller seller;
  List<ShippingOptions> shippingOptions;
  List<String> buyingOptions;
  String itemWebUrl;
  ItemLocation itemLocation;
  List<Categories> categories;
  bool adultOnly;
  String itemGroupHref;
  Image image;
  String itemGroupType;
  String condition;
  String conditionId;

  ItemSummary(
      {this.itemId,
        this.title,
        this.price,
        this.itemHref,
        this.seller,
        this.shippingOptions,
        this.buyingOptions,
        this.itemWebUrl,
        this.itemLocation,
        this.categories,
        this.adultOnly,
        this.itemGroupHref,
        this.image,
        this.itemGroupType,
        this.condition,
        this.conditionId});

  factory ItemSummary.fromJson(Map<String, dynamic> json) => _$ItemSummaryFromJson(json);
  Map<String, dynamic> toJson() => _$ItemSummaryToJson(this);

}