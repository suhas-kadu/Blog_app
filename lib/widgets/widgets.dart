import 'package:blog_app/views/user_profile.dart';
import 'package:flutter/material.dart';


class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(              
      padding: EdgeInsets.symmetric(horizontal: 16),
    child: Text("MyFlutterBlog",)
    );
  }
}

class Author extends StatelessWidget {
  const Author({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Made by "),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserProfile()));
            },
            child: Text(
              " Suhas Kadu",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}


class SmallProfile extends StatelessWidget {
  const SmallProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,              
      //margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: InkWell(              
        onTap:() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfile(),),);
        },
          child: ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("assets/images/logo.png"),),
            title: Text("Suhas Kadu"),
            subtitle: Text("TRF"),
            ),
          ),
        );
  }
}
