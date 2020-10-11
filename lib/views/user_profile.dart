import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UserProfile")),
      body:Center(child: CircularProgressIndicator(        
        backgroundColor: Colors.white,
      ))
    );
  }
}