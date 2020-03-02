import 'package:online_shopper/services/response/auth_response.dart';
import 'package:online_shopper/services/response/item_search_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:shared_preferences/shared_preferences.dart';

part 'ebay_api.g.dart';

@RestApi(baseUrl: "https://api.sandbox.ebay.com/")
abstract class EbayApi{

  factory EbayApi(Dio dio, {String baseUrl}) = _EbayApi;

  static Dio setAuthHeaders() {
    var dio = Dio();
    var base64ApplicationToken = "VGhhbXNhbnEtb25saW5lc2gtU0JYLTY2OWVhYjRmOS1hMDkzN2U0OTpTQlgtNjllYWI0ZjkyZDgxLWYwYzItNGE3OS05YTk1LTdkOGM=";
    dio.options.headers["Authorization"] = "Basic $base64ApplicationToken";
    dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
    dio.interceptors.add(PrettyDioLogger());
    return dio;
  }

  @GET("/buy/browse/v1/item_summary/search")
  Future<ItemSearchResponse> searchItemByKeyWords(@Query("q") String searchKeywords);

  @POST("/identity/v1/oauth2/token")
  Future<AuthResponse> authenticate(@Query("grant_type") String grantType, @Query("scope") String scope);

}