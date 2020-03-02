// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebay_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _EbayApi implements EbayApi {
  _EbayApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://api.sandbox.ebay.com/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  searchItemByKeyWords(searchKeywords) async {
    ArgumentError.checkNotNull(searchKeywords, 'searchKeywords');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{'q': searchKeywords};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/buy/browse/v1/item_summary/search',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ItemSearchResponse.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  authenticate(grantType, scope) async {
    ArgumentError.checkNotNull(grantType, 'grantType');
    ArgumentError.checkNotNull(scope, 'scope');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      'grant_type': grantType,
      'scope': scope
    };
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/identity/v1/oauth2/token',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AuthResponse.fromJson(_result.data);
    return Future.value(value);
  }
}
