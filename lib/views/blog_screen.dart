import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const String _contents = """
# blog_app
A new Flutter project.
## Getting Started
This project is a starting point for a Flutter application.
A few resources to get you started if this is your first Flutter project:
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# blog_app

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
![image]()


""";

class BlogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder(
            future: Future.delayed(Duration(seconds: 1), () => rootBundle.loadString("assets/file.md")),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  child: Column(
                    children: <Widget>[
                         Container(
                           child: Center(
                            child: Text("My First Flutter Blog",
                            style: TextStyle(fontSize: 30),
                            ),
                        ),
                         ),

                      Container(child: Center(child: Text("Suhas Kadu", style: TextStyle(color: Colors.blue),))),
                      Expanded(
                        child: Markdown(
                          data: _contents,
                          imageDirectory: Directory("assets/images/logo.png", ),
                        ),
                      ),

                    ],
                  ),
                );
              }

              return Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }
}
