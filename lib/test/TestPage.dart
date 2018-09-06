import 'package:flutter/material.dart';

import 'package:shoubei_app/test/gallery/villain_transition.dart';
import 'package:shoubei_app/test/profile/profile.dart';
import 'package:shoubei_app/test/villains/villains.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      navigatorObservers: [new VillainTransitionObserver()],
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new TestPage(title: 'Flutter Demo Home Page'),
      routes: {
        'grid': (_) => new PictureGridPage(),
        'profile': (_) => new ProfilePage(),
        'profile_page_2': (_) => new ProfilePage2(),

      },
    );
  }
}
class TestPage extends StatefulWidget {
  TestPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  TestPageState createState() => new TestPageState();
}

class TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("111"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: ()=>Navigator.of(context).pushNamed('grid'),
              child: new Text("Grid"),
            ),
            new RaisedButton(
              onPressed: ()=>Navigator.of(context).pushNamed('profile'),
              child: new Text("profile"),
            ),
            new RaisedButton(
              onPressed: ()=>Navigator.of(context).pushNamed('profile_page_2'),
              child: new Text("profile_page_no_hero"),
            ),
          ],
        ),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

 }