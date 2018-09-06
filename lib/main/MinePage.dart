import 'package:flutter/material.dart';
import 'package:shoubei_app/demo/RoundedModalPage.dart';
import 'package:shoubei_app/main/ShardPage.dart';

class MinePage extends StatefulWidget {

  @override
  MinePageState createState() => new MinePageState();

}

class MinePageState extends State<MinePage> {
   final colors=[
    Colors.red[800],
    Colors.pink[600],
    Colors.purple[500],
    Colors.deepPurple[400],
    Colors.blue[600],
    Colors.red[200],
    Colors.lightBlue[200],
    Colors.cyan[700],
  ];

   final titlts=[
      "商户认证",
      "商户认证",
      "商户认证",
      "商户认证",
      "商户认证",
      "商户认证",
      "商户认证",
      "分享",
   ];
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.red,
      ),
      home: new Scaffold(
          appBar: new AppBar(
            titleSpacing: 0.0,
            elevation: 0.0,
            title: TitleBar(),
          ),
          body: new Container(
            child: new ListView.builder(

              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
//                builderUser,
//                ItemData(),
                return index == 0 ? builderUser : ItemData(index);
              },
            ),
          )
      ),
    );
  }

  Container get builderUser {
    return new Container(
      color: Colors.red,
      height: 83.0,
      child: new Row(
        children: <Widget>[
          new Container(
              padding: EdgeInsets.only(left: 22.0),
              child: FlatButton(onPressed: () {},
                child: new Image.asset(
                  "images/per_icon.png", width: 52.0,height: 52.0, color: Colors.white,),)
          ),
          new Container(
            alignment: Alignment.centerLeft,
            child: new Column(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(top: 20.0),
                  alignment: Alignment.centerLeft,
                  child: new Text("店名", style: new TextStyle(
                      color: Colors.white, fontSize: 14.0)),
                ),
                new Container(
                  padding: EdgeInsets.only(top: 10.0),
                  alignment: Alignment.centerLeft,
                  child: new Text("123456", style: new TextStyle(
                      color: Colors.white, fontSize: 14.0)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget TitleBar() {
    return new Container(
      alignment: Alignment.centerLeft,
      padding: new EdgeInsets.only(left: 25.0, right: 5.0, bottom: 10.0),
      decoration: new BoxDecoration(
          color: Colors.red
      ),
      height: 86.0,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
            padding: EdgeInsets.only(top: 10.0, left: 120.0),
            child: new Text(
              "快收银", style: new TextStyle(color: Colors.white,
                fontSize: 22.0),),
            alignment: Alignment.center,
          ),

          new Container(
              padding: EdgeInsets.only(top: 10.0),
              alignment: Alignment.centerLeft,
              child: FlatButton(
                onPressed: () {},
                child: new Image.asset("images/setting.png",
                  color: Colors.white,),)
          ),
        ],
      ),
    );
  }

  Widget ItemData(int index) {
    return new Container(

      child: new Container(

        child: new FlatButton(onPressed: () {
          switch(index){
            case 0:
              break;
            case 1:
              break;
            case 2:
              break;
            case 3:
              break;
            case 4:
              break;
            case 5:
              break;
            case 6:
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context){
                return new RoundedModalPage();
              }));
              break;
            case 7:
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context){
                return new ShardPage();
              }));
              break;
          }
        }, child: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Row(
            children: <Widget>[
              new Image.asset("images/renz.png",width: 32.0,height: 32.0,color: colors[index],),
              new Container(
                padding: EdgeInsets.only(left: 15.0),
                child: new Text(titlts[index],
                  style: new TextStyle(color: Colors.black,fontSize: 14.0),),
              )
            ],
          ),
        )),
        decoration: new BoxDecoration(
          border: new BorderDirectional(bottom: BorderSide(color: Colors.red[200],width: 0.5))
        ),
      ),
    );
  }


}