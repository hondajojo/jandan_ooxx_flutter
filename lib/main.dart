import 'package:flutter/material.dart';
import 'content_item.dart';

void main() => runApp(new AwesomeTips());


class AwesomeTips extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        title: "妹子图",
        home: ContentList(),
        theme: ThemeData(primaryColor: Colors.yellow),
      );
    }
}

// class AwesomeTips extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "maijver@gamil.com",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("无聊图"),
//           backgroundColor: Colors.grey,
//         ),
//         body: HomeWidget(),
//       ),
//     );
//   }
// }

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
