import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

import 'package:online_shopper/services/api/ebay_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  var logger = Logger();

  @override
  void initState() {

    authenticateApplication();

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/home_page');
    });

    super.initState();
  }

  void authenticateApplication() async {
    var ebayApi = EbayApi(EbayApi.setAuthHeaders());
    var scope =
        "https://api.ebay.com/oauth/api_scope https://api.ebay.com/oauth/api_scope/buy.item.feed https://api.ebay.com/oauth/api_scope/buy.product.feed";
    var grantType = "client_credentials";

    await ebayApi
        .authenticate(grantType, scope)
        .then((response) => saveToken(response.accessToken))
        .catchError((Object obj) {
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response;
          if (res != null)
            logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 48.0,
            ),
            Text(
              'Online Shopper',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 28.0, horizontal: 28.0),
                child: CircularProgressIndicator())
          ],
        ),
      ),
    );
  }

  saveToken(String accessToken) async {
    var pref = await SharedPreferences.getInstance();
    logger.i("saving token $accessToken");
    pref.setString("auth-key", accessToken);
  }
}
