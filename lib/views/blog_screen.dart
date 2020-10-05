import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class BlogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blogs"),
      ),
      body: Container(
        child: FutureBuilder(
            future: Future.delayed(Duration(seconds: 1), () => rootBundle.loadString("assets/file.md")),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Markdown(
                  data: snapshot.data,
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
