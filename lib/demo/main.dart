import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:shoubei_app/main.dart';
import 'package:shoubei_app/main/HomePage.dart';

void main() {
//  debug Paintsizeenab Led=true;
//  debugPaintSizeEnabled = false;
  runApp(new MyHomeApp());
}

class MyHomeApp extends StatelessWidget {
  static final widtitles = [
    new Container(

      child: ColorizeAnimatedTextKit(
        text: [
          "Flights",
          "Flights",
          "Flights",
        ],
        textStyle: TextStyle(
            fontSize: 50.0,
            fontFamily: "Horizon"
        ),
        colors: [
          Colors.purple,
          Colors.white,
          Colors.yellow,
          Colors.red,
        ],
      ),
    ),
    Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[

        RotateAnimatedTextKit(
          text: ["AWESOME", "OPTIMISTIC", "DIFFERENT"],
          textStyle: TextStyle(fontSize: 40.0, fontFamily: "Horizon"),
        ),
      ],
    ),
    SizedBox(

      child: ColorizeAnimatedTextKit(
        text: [
          "Larry Page",
          "Bill Gates",
          "Steve Jobs",
        ],
        textStyle: TextStyle(
            fontSize: 15.0,
            fontFamily: "Horizon"
        ),
        colors: [
          Colors.purple,
          Colors.white,
          Colors.yellow,
          Colors.red,
        ],
      ),
    ),
  ];

  static final widbodys = [
    SizedBox(
      width: 250.0,
      child: TyperAnimatedTextKit(
        text: [
          "It is not enough to do your best,",
          "you must know what to do,",
          "and then do your best",
          "- W.Edwards Deming",
        ],
        textStyle: TextStyle(
            fontSize: 15.0,
            fontFamily: "Bobbers"
        ),
      ),
    ),
    SizedBox(
      child: TypewriterAnimatedTextKit(
        text: [
          "Discipline is the best tool",
          "Design first, then code",
          "Do not patch bugs out, rewrite them",
          "Do not test bugs out, design them out",
        ],
        textStyle: TextStyle(
            fontSize: 15.0,
            fontFamily: "Agne"
        ),
      ),
    ),
    SizedBox(
      width: 250.0,
      child: ScaleAnimatedTextKit(
        text: [
          "It is not enough to do your best,",
          "you must know what to do,",
          "and then do your best"
        ],
        textStyle: TextStyle(
            fontSize:15.0,
            fontFamily: "Canterbury"
        ),
      ),
    ),
  ];

  final pages = [
    new PageViewModel(
        pageColor: Color(0xFF8BCBE6),
        iconImageAssetPath: 'images/test1.png',
        iconColor: null,
        bubbleBackgroundColor: Colors.black,
        body: widbodys[0],
        title: widtitles[0],
        textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: Image.asset(
          'images/test1.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )
    ),
    new PageViewModel(
        pageColor: Color(0xFFE1CFA5),
        iconImageAssetPath: 'images/test.png',
        iconColor: null,
        bubbleBackgroundColor: Colors.black,
        body: widbodys[1],
        title: widtitles[1],
        textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: Image.asset(
          'images/test.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )
    ),

    new PageViewModel(
        pageColor: Color(0xFFC66085),
        iconImageAssetPath: 'images/test2.png',
        iconColor: null,
        bubbleBackgroundColor: Colors.black,
        body: widbodys[2],
        title: widtitles[2],
        textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: Image.asset(
          'images/test2.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "IntroViews Flutter",
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new Builder(builder: (BuildContext context) {
     return   new IntroViewsFlutter(
          pages,
          onTapDoneButton: () {
            Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new MyApp()), //MaterialPageRoute
            );
          },
          showSkipButton: true,
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        );
      }),
    );
  }
}
