import 'package:blog_app/views/blog_screen.dart';
import 'package:flutter/material.dart';

class OriginalScreen extends StatelessWidget {
  const OriginalScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BlogScreen()));
            },
            child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Go to first Blog",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ))));
  }
}
