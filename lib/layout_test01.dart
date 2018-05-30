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
                  child: new Text(
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
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
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
      padding: EdgeInsets.all(35.0),
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
