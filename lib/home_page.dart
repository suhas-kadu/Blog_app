import 'dart:io';

import 'package:blog_app/views/blog_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:blog_app/views/user_profile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:blog_app/widgets/widgets.dart';

const String _content = """

# Wallpaper

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



# Blog_app
A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
![image](https://miro.medium.com/max/700/1*TkNd1PwwwdBi9Z3kdG5Hng.png)
""";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void launchURL(String href) async {
    if (await canLaunch(href)) {
      await launch(href);
    } else {
      throw 'Cannot launch URL';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Blogs")),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: MyAppBar(),
            //floating: true,
            pinned: true,            
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(  
              //title: MyAppBar(),            
              background: Image.asset("assets/images/logo.png", fit: BoxFit.cover),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Markdown package in Flutter with Slivers",
                style: TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Author(),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              width: MediaQuery.of(context).size.width,
              child: MarkdownBody(
                onTapLink: launchURL,
                data: _content,
              ),
            ),
            SmallProfile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

