import 'package:flutter/material.dart';


class SearchList extends StatefulWidget {
  SearchList({Key key}) : super(key: key);
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _SearchList();
    }
}

class _SearchList extends State<SearchList> {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          title: Text("搜索"),
        ),
      );
    }
}