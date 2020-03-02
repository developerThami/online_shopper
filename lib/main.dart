import 'package:flutter/material.dart';
import 'package:online_shopper/pages/home_page.dart';
import 'package:online_shopper/pages/loading_page.dart';
import 'package:online_shopper/pages/item_detail_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/': (context) => LoadingPage(),
      '/home_page': (context) => HomePage(title: 'Online Shopper Home Page'),
      '/item_detail_page': (context) => ItemDetailsPage(
            title: 'Selected item details',
          )
    });
  }
}
