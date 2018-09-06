import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shoubei_app/MainPage.dart';
import 'package:shoubei_app/demo/main.dart';
import 'package:shoubei_app/main/text_form_field_demo.dart';
import 'package:flutter/services.dart';
import 'package:shoubei_app/view/IconButtons.dart';

void main() {
//  debug Paintsizeenab Led=true;
  debugPaintSizeEnabled = false;
  runApp(new MyHomeApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',

      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: '快收银2.0'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _activity = 'fishing';
  final List<String> _allActivities = <String>[
    'hiking', 'swimming', 'boating', 'fishing'];
  bool _obscureText = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormFieldState<String>> _passwordFieldKey = new GlobalKey<
        FormFieldState<String>>();

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),

      body: new SafeArea(
        top: false,
        bottom: false,
        child: new Form(
          child: new SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 24.0),
                new TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  maxLength: 12,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: false,
                    icon: Icon(Icons.person),
                    hintText: '请输入手机号\\\商户号',
                    labelText: '用户名',
                  ),
                ),
//                const SizedBox(height: 24.0),
//                new TextFormField(
//                  textCapitalization: TextCapitalization.sentences,
//                  maxLength: 8,
//                  decoration: const InputDecoration(
//                    border: UnderlineInputBorder(),
//                    filled: false,
//                    icon: Icon(Icons.visibility),
//                    hintText: '请输入8位数密码',
//                    labelText: '密码',
//                  ),
//                ),
                const SizedBox(height: 24.0),
//            obscureText
                new TextFormField(
                  maxLength: 8,
                  obscureText: !_obscureText,
                  decoration: new InputDecoration(
                    border: const UnderlineInputBorder(),
                    filled: false,
                    hintText: '请输入8位数密码',
                    labelText: '密码',
                    helperText: "密码只能为数字或字母",
                    icon: Icon(Icons.person),
                    suffixIcon: new GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: new Icon(_obscureText ? Icons.visibility : Icons
                          .visibility_off),
                    ),
                  ),
                ),
//                new Container(
//                  width: 24.0, height: 24.0,
//                  child: new IconButtons(
//                    icon: Icon(Icons.message),
//                    onPressed: () {},
//                    color: Colors.red,
//                    highlightColor: Colors.white,
//                    splashColor: Colors.blue,
//                    disabledColor: Colors.amber,
//                  ),
//                ),
//                new Container(
//                  width: 40.0,height: 40.0,
//                  child: new FloatingActionButton(
//                      tooltip: 'Show explanation',
//
//                      child: new Icon(Icons.message,size: 20.0,),
//                      onPressed: () {}
//                  ),
//                ),

                new Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: new CupertinoButton(
                    child: const Text('登录',),
                    color: Colors.red[600],
                    minSize: 40.0,
                    onPressed: () {
                      Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) {
                            return MainPage();
                          }));
                    },
                  ),
                ),
                new SizedBox(height: 30.0,),

              ],
            ),
          ),
        ),
      ),
    );

//      body: new DropdownButtonHideUnderline(
//        child: new SafeArea(
//          top: false,
//          bottom: false,
//          child: new ListView(
//            padding: const EdgeInsets.all(16.0),
//            children: <Widget>[
//
//              new Row(
//                  children: <Widget>[
//                    new Image.asset(
//                        "images/username.png", color: Colors.amber[900],
//                        width: 25.0,
//                        height: 25.0),
//                    new TextField(
//                      decoration: const InputDecoration(
//                        labelText: 'Location',
//                      ),
//                      style: Theme
//                          .of(context)
//                          .textTheme
//                          .display1
//                          .copyWith(fontSize: 20.0),
//                    ),
//                  ],
//              ),
//              new TextField(
//                enabled: true,
//                decoration: const InputDecoration(
//                    labelText: '登录账号',
//                    hintText: "请输入账号"
////                border: OutlineInputBorder(),
//                ),
//                style: Theme
//                    .of(context)
//                    .textTheme
//                    .display1
//                    .copyWith(fontSize: 20.0),
//              ),
//
//              new TextField(
//                decoration: const InputDecoration(
//                  labelText: '密码',
//                  hintText: "请输入密码",
//
//                ),
//                style: Theme
//                    .of(context)
//                    .textTheme
//                    .display1
//                    .copyWith(fontSize: 14.0),
//              ),
////            new Container(
////                child: new Column(
////                  mainAxisAlignment: MainAxisAlignment.center,
////                  children: <Widget>[
////                    new Container(
////                      //设置显示位置
////                      margin: EdgeInsets.all(40.0),
////                      alignment: Alignment.centerLeft,
////                      child: Container(
////                        child: Row(
////                          children: <Widget>[
////                            new Image.asset(
////                                "images/username.png", color: Colors.amber[900],
////                                width: 25.0,
////                                height: 25.0),
////                            new TextField(
////                              decoration: const InputDecoration(
////                                labelText: 'Location',
////                              ),
////                              style: Theme.of(context).textTheme.display1.copyWith(fontSize: 20.0),
////                            ),
////                          ],
////                        ),
////                        padding: EdgeInsets.only(bottom: 10.0),
////                        decoration: new BoxDecoration(
////                            border: new BorderDirectional(
////                                bottom: new BorderSide(
////                                    color: Colors.amber[900], width: 0.5)
////                            )
////                        ),
////                      ),
////                    ),
////                    new Container(
////                      //设置显示位置
////                      margin: EdgeInsets.all(40.0),
////                      alignment: Alignment.centerLeft,
////                      child: Container(
////                        child: Row(children: <Widget>[
////                          new Image.asset(
////                            "images/password.png", color: Colors.amber[900],
////                            width: 25.0,
////                            height: 25.0,),
////                          new Container(
////                              padding: EdgeInsets.only(left: 20.0),
////                            child:  new TextField(
////                              // enabled: !snapshot.data,
////                              style: new TextStyle(
////                                  fontSize: 15.0, color: Colors.black),
////                              decoration: new InputDecoration(
////                                  hintText: 'please input you userName',
////                                  labelText: "User Name",
////                                  labelStyle: TextStyle(
////                                      fontWeight: FontWeight.w700, fontSize: 13.0),
////                                  hintStyle: TextStyle(fontSize: 12.0)),
////                            ),
////                          )
////                        ],
////                        ),
////                        padding: EdgeInsets.only(bottom: 10.0),
////                        decoration: new BoxDecoration(border: new BorderDirectional(
////                            bottom: new BorderSide(
////                                color: Colors.amber[900], width: 0.5)
////                        )
////                        ),
////                      ),
////                    ),
////                    new Container(
////                      width: 200.0,
////                      child: new FlatButton(
////                          onPressed: () {
////                            Navigator.of(context).push(
////                                new MaterialPageRoute(builder: (context) {
////                                  return MainPage();
////                                }));
////                          },
////                          child: new Text("登录", style: new TextStyle(
////                              color: Colors.white, fontSize: 16.0),)),
////                      decoration: new BoxDecoration(
////                          color: Colors.yellow[900],
////                          borderRadius: BorderRadius.all(
////                              const Radius.circular(58.0))),
////                    ),
//////            new Container(
//////              width: 200.0,
//////              child: new Chip(
//////                label: new FlatButton(onPressed: (){
//////                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context){
//////                    return new MainPage();
//////                  }));
//////                }, child: new Text("登录",style: new TextStyle(color: Colors.blue),)),
//////                backgroundColor:  Colors.black12,
//////
//////              ),
//////              margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
//////              alignment: Alignment.topLeft,
//////            ),
////                  ],
////                )
////
////            )
//            ],
//          ),
//        ),
//      ),
//    floatingActionButton:
//    new FloatingActionButton(
//      onPressed: () {
//        Navigator.of(context).push(
//            new MaterialPageRoute(builder: (BuildContext context) {
//              return new MainPage();
//            }));
//      },
//      tooltip: 'Increment',
//      child: new Icon(Icons.add),
//    )
//    ,
//    );
  }


}
