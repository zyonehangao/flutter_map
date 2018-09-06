import 'package:flutter/material.dart';
import 'package:shoubei_app/main/QrKoubeiPage.dart';
import 'package:shoubei_app/scan/QrCodePage.dart';
import 'package:shoubei_app/scan/ScanPage.dart';

class EnterPricePage extends StatefulWidget {
 final String qrcode;

  EnterPricePage({Key key,this.qrcode}):super(key: key);

 @override
  EnterPricePageState createState() => new EnterPricePageState(qrcode: qrcode);
}

class EnterPricePageState extends State<EnterPricePage> {
  final String qrcode;
  EnterPricePageState({Key key,this.qrcode});
  StringBuffer buffer ;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: new Text('收款'),
      ),
      body: SingleChildScrollView(
        child:  new Container(
        color: Colors.white,
        child: new Column(

          children: <Widget>[
            new Container(
              alignment: Alignment.centerLeft,
              padding: new EdgeInsets.only(left: 15.0, top: 10.0),
              child: new Text("输入金额",
                style: new TextStyle(color: Colors.black, fontSize: 22.0),),
            ),

            new Container(
              margin: EdgeInsets.only(top: 25.0),
              alignment: Alignment.center,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    alignment: Alignment.center,

                    padding: new EdgeInsets.only(left: 15.0,),
                    child: new Text("¥", style: new TextStyle(
                        color: Colors.black, fontSize: 26.0),),
                  ),
                  new Container(
                    alignment: Alignment.center,
                    margin: new EdgeInsets.only(left: 10.0),
                    height: 30.0,
                    decoration: new BoxDecoration(border: new BorderDirectional(
                        start: new BorderSide(
                            color: Colors.amber[900], width: 3.0)
                    ),
                    ),
                  ),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration.collapsed(
                          hintText: "请输入金额",
                          hintStyle: new TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 18.0)
                      ),
                    ),
                  ),
                  new Container(
                    child: new FlatButton(onPressed: () {

                    }, child: new Icon(Icons.delete_forever)),
                  )

                ],
              ),
            ),
            new Container(
              decoration: new BoxDecoration(
                  border: new BorderDirectional(
                    top: BorderSide(
                        color: Colors.blue, width: 0.5),
                  ),
                  color: Colors.white
              ),
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(top: 175.0),
              child: new Column(
                children: <Widget>[
                  new Container(

                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Container(

                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 55.0,
                                child: new FlatButton(onPressed: () {},
                                    child: new Text("1", style: new TextStyle(
                                        fontSize: 20.0, color: Colors.black),)),
                                decoration: new BoxDecoration(
                                    border: new BorderDirectional(
                                        bottom: BorderSide(
                                            color: Colors.blue, width: 0.5),
                                        end: BorderSide(
                                            color: Colors.blue, width: 0.5)),
                                    color: Colors.white
                                ),
                              ),
                              new Container(
                                height: 55.0,
                                child: new FlatButton(onPressed: () {},
                                  child: new Text("4", style: new TextStyle(
                                      fontSize: 20.0, color: Colors.black),),),
                                decoration: new BoxDecoration(
                                    border: new BorderDirectional(
                                        bottom: BorderSide(
                                            color: Colors.blue, width: 0.5),
                                        end: BorderSide(
                                            color: Colors.blue, width: 0.5)),
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 55.0,
                                child: new FlatButton(onPressed: () {

                                },
                                  child: new Text("2", style: new TextStyle(
                                      fontSize: 20.0, color: Colors.black),),),
                                decoration: new BoxDecoration(
                                    border: new BorderDirectional(
                                        bottom: BorderSide(
                                            color: Colors.blue, width: 0.5),
                                        end: BorderSide(
                                            color: Colors.blue, width: 0.5)),
                                    color: Colors.white
                                ),
                              ),
                              new Container(
                                height: 55.0,
                                child: new FlatButton(onPressed: () {},
                                  child: new Text("5", style: new TextStyle(
                                      fontSize: 20.0, color: Colors.black),),),
                                decoration: new BoxDecoration(
                                    border: new BorderDirectional(
                                        bottom: BorderSide(
                                            color: Colors.blue, width: 0.5),
                                        end: BorderSide(
                                            color: Colors.blue, width: 0.5)),
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 55.0,
                                child: new FlatButton(onPressed: () {},
                                    child: new Text("3", style: new TextStyle(
                                        fontSize: 20.0, color: Colors.black),)),
                                decoration: new BoxDecoration(
                                    border: new BorderDirectional(
                                        bottom: BorderSide(
                                            color: Colors.blue, width: 0.5),
                                        end: BorderSide(
                                            color: Colors.blue, width: 0.5)),
                                    color: Colors.white
                                ),
                              ),
                              new Container(
                                height: 55.0,
                                child: new FlatButton(onPressed: () {},
                                  child: new Text("6", style: new TextStyle(
                                      fontSize: 20.0, color: Colors.black),),),
                                decoration: new BoxDecoration(
                                    border: new BorderDirectional(
                                        bottom: BorderSide(
                                            color: Colors.blue, width: 0.5),
                                        end: BorderSide(
                                            color: Colors.blue, width: 0.5)),
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),

                        new Container(

                          child: new Column(
                            children: <Widget>[
                              new Container(
                                  height: 110.0,
                                  child: new FlatButton(onPressed: () {

                                  },
                                  child: new Image.asset("images/fanhui.png",width: 30.0,height: 30.0,))
                              ),
                            ],
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(
                                bottom: BorderSide(
                                    color: Colors.blue, width: 0.5),
                              ),
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Container(

                    child: new Row(
                      mainAxisSize: MainAxisSize.max,

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Container(
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 55.0,
                                child: new FlatButton(onPressed: () {},
                                    child: new Text("7", style: new TextStyle(
                                        fontSize: 20.0, color: Colors.black),)),
                                decoration: new BoxDecoration(
                                    border: new BorderDirectional(
                                        bottom: BorderSide(
                                            color: Colors.blue, width: 0.5),
                                        end: BorderSide(
                                            color: Colors.blue, width: 0.5)),
                                    color: Colors.white
                                ),
                              ),
                              new Container(
                                height: 55.0,
                                child: new FlatButton(onPressed: () {},
                                  child: new Text(".", style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.black),),),
                                decoration: new BoxDecoration(
                                    border: new BorderDirectional(
                                        bottom: BorderSide(
                                            color: Colors.blue, width: 0.5),
                                        end: BorderSide(
                                            color: Colors.blue, width: 0.5)),
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 55.0,
                                child: new FlatButton(onPressed: () {},
                                    child: new Text("8", style: new TextStyle(
                                        fontSize: 20.0, color: Colors.black),)),
                                decoration: new BoxDecoration(
                                    border: new BorderDirectional(
                                        bottom: BorderSide(
                                            color: Colors.blue, width: 0.5),
                                        end: BorderSide(
                                            color: Colors.blue, width: 0.5)),
                                    color: Colors.white
                                ),
                              ),
                              new Container(
                                height: 55.0,
                                child: new FlatButton(onPressed: () {},
                                  child: new Text("0", style: new TextStyle(
                                      fontSize: 20.0, color: Colors.black),),),
                                decoration: new BoxDecoration(
                                    border: new BorderDirectional(
                                        bottom: BorderSide(
                                            color: Colors.blue, width: 0.5),
                                        end: BorderSide(
                                            color: Colors.blue, width: 0.5)),
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 55.0,
                                child: new FlatButton(onPressed: () {},
                                    child: new Text("9", style: new TextStyle(
                                        fontSize: 20.0, color: Colors.black),)),
                                decoration: new BoxDecoration(
                                    border: new BorderDirectional(
                                        bottom: BorderSide(
                                            color: Colors.blue, width: 0.5),
                                        end: BorderSide(
                                            color: Colors.blue, width: 0.5)),
                                    color: Colors.white
                                ),
                              ),
                              new Container(
                                height: 55.0,
                                child: new FlatButton(onPressed: () {},
                                  child: new Text(" ", style: new TextStyle(
                                      fontSize: 20.0, color: Colors.black),),),
                                decoration: new BoxDecoration(
                                    border: new BorderDirectional(
                                        bottom: BorderSide(
                                            color: Colors.blue, width: 0.5),
                                        end: BorderSide(
                                            color: Colors.blue, width: 0.5)),
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),

                        new Container(

                          color: Colors.red,
                          child: new Container(
                            height: 110.0,
                            child: new FlatButton(onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) {
//                                    koubei
//                                    return qrcode == "qrcode"
//                                        ? new QrCodePage()
//                                        : new ScanPage() qrcode =="koubei"?new QrCodePage():new ScanPage();
                                  if(qrcode == "qrcode"){
                                    return new ScanPage();
                                  }else if("koubei"==qrcode){
                                    return new QrKoubeiPage();
                                  } else{
                                    return new QrCodePage();
                                  }
                                  }));
                            },
                                child: new Text("确定",
                                  style: new TextStyle(fontSize: 20.0,
                                      color: Colors.white),)),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buffer =new StringBuffer();
  }
}