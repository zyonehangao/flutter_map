import 'package:flutter/material.dart';
import 'ounded_modal.dart';
class RoundedModalPage extends StatefulWidget {
  @override
  RoundedModalPageState createState() => new RoundedModalPageState();
}

class RoundedModalPageState extends State<RoundedModalPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('测试'),
      ),
      body: new FlatButton(onPressed: (){
        showRoundedModalBottomSheet(
          context: context,
          radius: 5.0,  // This is the default
          color: Colors.white,  // Also default
          builder: (context) => new Container(
            padding: new EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text("1111111"),
                Text("2222222"),
                Text("3333333"),
                Text("44444444"),
                Text("5555555"),
              ],
            ),
          ),
        );
      }, child: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Text("我是测试"),
      )),
    );
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}