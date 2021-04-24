import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 65, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.chevron_left,
                    size: 30,
                  ),
                  onPressed: () {},
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  onPressed: () {},
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
