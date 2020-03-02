import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_shopper/services/api/ebay_api.dart';
import 'package:online_shopper/services/models/item_summary.dart';
import 'package:online_shopper/services/response/item_search_response.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  String title;

  HomePage({this.title});

  @override
  _HomePageState createState() => _HomePageState(title: title);
}

class _HomePageState extends State<HomePage> {
  String title;
  var _searchListItems = List<ItemSummary>(0);
  bool noItemsFound = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  _HomePageState({this.title});

  @override
  void initState() {
    _searchListItems = List(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          title: Text(title),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            _getSearchView(),
            _getSearchItemsListView(),
          ],
        ));
  }

  Widget _getSearchItemsListView() {
    return Flexible(
      child: new ListView.builder(
          itemCount: (_searchListItems != null) ? _searchListItems.length : 0,
          itemBuilder: (BuildContext context, int index) {
            return _getSearchItemCardView(index);
          }),
    );
  }

  Widget _getSearchView() {
    return Container(
      child: Card(
          color: Colors.white,
          margin: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: 'Search for anything'),
            onSubmitted: (searchKeyWords) {
              findItem(searchKeyWords);
            },
          )),
    );
  }

  Widget _getSearchItemCardView(int index) {
    return Card(
      color: Colors.white,
      elevation: 5.0,
      child: Row(
        children: <Widget>[
          Container(
            height: 90.0,
            width: 80.0,
            child: (_searchListItems[index].image != null)
                ? Image.network("${_searchListItems[index].image.imageUrl}")
                : Container(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.grey,
                    height: 90.0,
                    width: 80.0,
                  ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(5.0),
                    child: Text(
                      "${_searchListItems[index].title}",
                      style: TextStyle(
                          color: Colors.black54, fontStyle: FontStyle.normal),
                      overflow: TextOverflow.clip,
                    )),
                Container(
                    margin: EdgeInsets.all(5.0),
                    child: Text(
                        "${_searchListItems[index].price.currency} ${_searchListItems[index].price.value}")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void findItem(String searchKeywords) async {
    var pref = await SharedPreferences.getInstance();
    var token = pref.getString("auth-key");

    var dio = Dio();
    dio.options.headers["Authorization"] = "Bearer $token";
    dio.interceptors.add(PrettyDioLogger());

    var ebayApi = EbayApi(dio);
    var logger = Logger();

    await ebayApi
        .searchItemByKeyWords(searchKeywords)
        .then((response) => setSearchListItems(response))
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

  setSearchListItems(ItemSearchResponse response) {
    setState(() {
      if (response.total == 0) {
        var snackBar = SnackBar(
          content: Text('Oops, no item not found.'),
          action: SnackBarAction(
            label: 'Ok',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );
        _scaffoldKey.currentState.showSnackBar(snackBar);
      }
      _searchListItems = response.itemSummaries;
    });
  }
}
