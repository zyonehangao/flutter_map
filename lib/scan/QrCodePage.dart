import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class QrCodePage extends StatefulWidget {
  @override
  QrCodePageState createState() => new QrCodePageState();
}

class QrCodePageState extends State<QrCodePage> {
  String url="1111";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('我的收款码'),
      ),
      body: new Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.only(top: 10.0),
              child: new Text("扫一扫向我付款",
                style: new TextStyle(color: Colors.black, fontSize: 16.0),),
            ),
            new Container(
              padding: new EdgeInsets.only(top: 10.0, bottom: 10.0)
              , child: new Text("¥2.0",
              style: new TextStyle(color: Colors.black, fontSize: 14.0),),),
            new Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.red
              ),
              child: new Container(
                alignment: Alignment.center,
                  padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.white
                ),
                margin: EdgeInsets.all(1.0),
                child: new QrImage(data: url,size: 195.0,),
              ),
            ),
            new Container(
              padding: new EdgeInsets.only(top: 10.0),
              child: new Text("扫一扫向我付款",
                style: new TextStyle(color: Colors.black, fontSize: 16.0),),
            ),
            new Container(
              padding: new EdgeInsets.only(top: 25.0),
              alignment: Alignment.center,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Container(
                    child: FlatButton(onPressed: (){
                      setState(() =>this.url="https://www.hao123.com/?tn=12092018_12_hao_pg");
                    }, child: new Image.asset("images/qr_weixin.png",width: 55.0,height: 45.0,),)
                  ),
                  new Container(
                    child: FlatButton(onPressed: (){
                      setState(() => this.url = "https://pub.dartlang.org/packages/");
                    }, child: new Image.asset("images/qr_zhifubao.png",width: 55.0,height: 45.0,),)
                  ),
                ],
              ),
            )
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