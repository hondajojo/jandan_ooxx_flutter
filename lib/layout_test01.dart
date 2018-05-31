import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          // Icon(
          //   Icons.star,
          //   color: Colors.red[500],
          // ),
          // Text('41'),
          FavWidget(),
        ],
      ),
    );
  }
}

class Layout2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          buildExpanded(Icons.call, "CALL"),
          buildExpanded(Icons.near_me, "ROUTE"),
          buildExpanded(Icons.share, "SHARE")
        ],
      ),
    );
  }

  Expanded buildExpanded(IconData icon, String label) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Icon(icon, color: Colors.blue),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Layout3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Text(
        "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
        softWrap: true,
      ),
    );
  }
}

class Layout4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Image.asset("images/lake.jpeg", height: 240.0, fit: BoxFit.cover),
      child: Image.network("https://i.loli.net/2018/05/27/5b0abc043b96b.png",
          height: 240.0, fit: BoxFit.cover),
    );
  }
}

class Layout5 extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(32.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.book),
            Text("blog")
          ],
        ),
      );
    }
}

class FavWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavWidget();
  }
}

class _FavWidget extends State<FavWidget> {
  bool is_fav = true;
  int fav_count = 41;

  void toggleFav() {
    setState(() {
      if (is_fav) {
        fav_count -= 1;
        is_fav = false;
      } else {
        fav_count += 1;
        is_fav = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          // padding: EdgeInsets.all(0.0),
          child: IconButton(
            icon: (is_fav ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: toggleFav,
          ),
        ),
        SizedBox(
          width: 18.0,
          child: Container(
            child: Text('$fav_count'),
          ),
        ),
        // Checkbox(),
      ],
    );
  }
}
