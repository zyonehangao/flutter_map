import 'package:flutter/material.dart';

class HomeTabView extends StatelessWidget {
  Icon icon;
  Text title;
  TickerProvider vsync;

//    Article(this.headUrl, this.user, this.action, this.time, this.title, this.mark, this.agreeNum, this.commentNum, {this.imgUrl});
  HomeTabView({Key key, this.title, this.icon, this.vsync}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(

        color: Colors.blue[500],
        child: new FlatButton(
            onPressed: (){}, child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
          new Icon(Icons.mms, color: Colors.white,),
          new Text(
              "测试", style: new TextStyle(color: Colors.white, fontSize: 16.0)),
        ],)
        )
    );
//      decoration: new BoxDecoration(
//        color: Colors.red[500],
//        borderRadius: new BorderRadius.all(const Radius.circular(0.01)),
//      ),
  }
}