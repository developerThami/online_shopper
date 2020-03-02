import 'shipping_info.dart';
import 'primary_category.dart';
import 'selling_status.dart';
import 'listing_info.dart';
import 'condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result_item.g.dart';

@JsonSerializable()
class SearchResultItem {

  List<String> itemId;
  List<String> title;
  List<String> globalId;
  List<PrimaryCategory> primaryCategory;
  List<String> viewItemURL;
  List<String> paymentMethod;
  List<String> autoPay;
  List<String> postalCode;
  List<String> location;
  List<String> country;
  List<ShippingInfo> shippingInfo;
  List<SellingStatus> sellingStatus;
  List<ListingInfo> listingInfo;
  List<String> returnsAccepted;
  List<Condition> condition;
  List<String> isMultiVariationListing;
  List<String> topRatedListing;

  SearchResultItem(
      {this.itemId, this.title, this.globalId, this.primaryCategory, this.viewItemURL, this.paymentMethod, this.autoPay, this.postalCode, this.location, this.country, this.shippingInfo, this.sellingStatus, this.listingInfo, this.returnsAccepted, this.condition, this.isMultiVariationListing, this.topRatedListing});

  factory SearchResultItem.fromJson(Map<String, dynamic> json) => _$SearchResultItemFromJson(json);
  Map<String,dynamic> toJson() => _$SearchResultItemToJson(this);

}












