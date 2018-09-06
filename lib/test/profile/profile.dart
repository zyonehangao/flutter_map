import 'package:flutter/material.dart';
import 'package:shoubei_app/test/villains/villains.dart';

import '../utils.dart';

// image from https://unsplash.com/photos/pAs4IM6OGWI
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            child: Hero(tag: "profile", child: CircleAvatar(backgroundImage: AssetImage("assets/joe-gardner.jpg"))),
            onTap: () {
              Navigator.of(context).push(BlankRoute(ProfilePage2()));
            },
          ),
        ),
      ),
    );
  }
}

class ProfilePage2 extends StatefulWidget {
  @override
  _ProfilePage2State createState() => new _ProfilePage2State();
}

class _ProfilePage2State extends State<ProfilePage2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      backgroundColor: Color(0xffdddddd),
      body: Center(

      ),
    );
  }
}
