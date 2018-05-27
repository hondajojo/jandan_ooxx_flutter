import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'comment.dart';

class ContentList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContentListState();
}

class _ContentListState extends State<ContentList> {
  var _items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("妹子图")),
      body: ListView.builder(
        padding: EdgeInsets.all(13.0),
        itemCount: _items.length * 2,
        itemBuilder: (context, position) {
          if (position.isOdd) return Divider();
          final index = position ~/ 2;
          return _buildRowWithPic(index);
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Widget _buildRow(int i) {
    Comment comment = this._items[i];
    return ListTile(
      title: Text(comment.pics[0], overflow: TextOverflow.fade),
      subtitle: Text('@${comment.commentAuthor} ${comment.commentDate}'),
    );
  }

  Widget _buildRowWithPic(int i) {
    Comment comment = this._items[i];
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(comment.pics[0]),
          Text("@${comment.commentAuthor}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.red)),
          Text("${comment.commentDate}", textAlign: TextAlign.right),
        ],
      ),
    );
  }

  void _loadData() async {
    String dataURL =
        "http://i.jandan.net/?oxwlxojflwblxbsapi=jandan.get_ooxx_comments&page=1";
    http.Response response = await http.get(dataURL);
    final body = json.decode(response.body);
    final String code = body["status"];
    if (code == "ok") {
      final comments = body["comments"];
      print(comments);
      var items = [];
      comments.forEach((item) => items.add(Comment(item["comment_author"],
          item["comment_date"], item["comment_ID"], item["pics"])));
      setState(() {
        _items = items;
      });
    }
  }
}
