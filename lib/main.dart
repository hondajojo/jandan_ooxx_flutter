import 'package:flutter/material.dart';
import 'content_item.dart';
import 'layout_test01.dart';
import 'search_list.dart';
import 'package:flutter/rendering.dart';

// void main() => runApp(new AwesomeTips());

void main() {
  // debugPaintSizeEnabled=true;
  runApp(new AwesomeTips());
}

// class AwesomeTips extends StatelessWidget{
//   @override
//     Widget build(BuildContext context) {
//       // TODO: implement build
//       return MaterialApp(
//         title: "妹子图",
//         home: Layout1(),
//         theme: ThemeData(primaryColor: Colors.yellow),
//       );
//     }
// }

class AwesomeTips extends StatelessWidget {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      // color: Color.fromRGB(255, 66, 165, 245),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int index) {
          setState() {
            this.index = index;
          }

          ;
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.autorenew), title: Text("最新")),
          BottomNavigationBarItem(
              icon: Icon(Icons.turned_in), title: Text("离线收藏夹")),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz), title: Text("更多")),
        ],
      ),
      appBar: AppBar(
        title: Text("2018/06/02 第1183期"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Navigator.push(context, Route());
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchList(),
                  ));
            },
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          if (index.isOdd)
            return Divider(
              color: Colors.grey,
            );
          return Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[Layout6()],
            ),
          );
        },
      ),
    );
  }
}

// class HomeWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Container(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             children: <Widget>[
//               Image.network("https://i.loli.net/2018/05/27/5b0abc043b96b.png"),
//               Text(
//                 "this is a picture from jp",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
//               ),
//               Divider(
//                 color: Colors.blue,
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
