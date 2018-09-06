import 'package:flutter/material.dart';
import 'package:shoubei_app/QrreaderPage/QrreaderPage.dart';
import 'package:shoubei_app/main/HomeTabView.dart';
import 'package:shoubei_app/main/StatisticsPage.dart';
import 'package:shoubei_app/scan/EnterPricePage.dart';
import 'package:shoubei_app/test/TestPage.dart';
class HomePage extends StatefulWidget {


  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<Widget> listTab;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
   List<String> labels = [
    "Rotate",
    "Fade",
    "Typer",
    "Typewriter",
    "Scale",
    "Colorize",
  ];

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new SingleChildScrollView(
        child: new Container(
          child: new Column(
            children: <Widget>[
              new Container(
                alignment: Alignment.centerLeft,
                padding: new EdgeInsets.only(left: 25.0, right: 25.0),
                decoration: new BoxDecoration(
                    color: Colors.red[500]
                ),
                height: 86.0,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Container(
                      alignment: Alignment.centerLeft,
                      child: new Image.asset("images/kefi.png", width: 22.0,
                        height: 22.0,
                        color: Colors.white,),
                    ),
                    new Container(
                      padding: EdgeInsets.only(right: 130.0),
                      child: new Text(
                        "快收银", style: new TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0),),
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
              new Container(
                child: new Column(
                  children: <Widget>[
                    _TabHeard(),
                    _tabContent(),

                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }


  Widget _TabHeard() {
    return new Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Expanded(
            flex: 1,
            child: new Container(
                alignment: Alignment.center,
                height: 100.0,

                decoration: new BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        const Radius.circular(0.01)),
                    color: Colors.red[500]
                ),
                child: new FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        new MaterialPageRoute(builder: (BuildContext context) {
                          return new EnterPricePage(qrcode: "scan",);
//                          return new QrreaderPage(qrcode: "scan",);
                        }));
                  }, child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset("images/saoyisao.png", color: Colors.white,
                      width: 47.0,
                      height: 47.0,),
                    new SizedBox(height: 5.0,),
                    new Text("扫一扫收款",
                      style: new TextStyle(
                          fontSize: 16.0, color: Colors.white),),
                  ],
                ),)
            )
        ),
        new Expanded(
            flex: 1,
            child: new Container(
                alignment: Alignment.center,
                height: 100.0,
                decoration: new BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        const Radius.circular(0.01)),
                    color: Colors.red[500]
                ),
                child: new FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        new MaterialPageRoute(builder: (BuildContext context) {
//                      return new QrCodePage();
                          return new EnterPricePage(qrcode: "qrcode",);
                        }));
                  }, child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset("images/ceode.png", color: Colors.white,
                      width: 47.0,
                      height: 47.0,),
                    new SizedBox(height: 5.0,),
//                    RotateAnimatedTextKit(
//                      text: ["二维码收款", "二维码收款", "二维码收款"],
//                      textStyle: TextStyle(fontSize: 40.0, fontFamily: "Horizon"),
//                    ),
                    new Text("二维码收款",

                      style: new TextStyle(
                          fontSize: 16.0, color: Colors.white,),),
                  ],
                ),)
            )
        ),

        new Expanded(
            flex: 1,
            child: new Container(
                alignment: Alignment.center,
                height: 100.0,
                decoration: new BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        const Radius.circular(0.01)),
                    color: Colors.red[500]
                ),
                child: new FlatButton(
                  onPressed: () {}, child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset("images/paycard.png", color: Colors.white,
                      width: 47.0,
                      height: 47.0,),
                    new SizedBox(height: 5.0,),
                    new Text("刷卡收款",
                      style: new TextStyle(
                          fontSize: 16.0, color: Colors.white),),
                  ],
                ),)
            )
        ),
      ],
    );
  }

  Widget _GridView() {
    return new GridView.count(
      primary: false,
      // 创建几列
      crossAxisCount: 2,
      // Axis.horizontal表示横向滑动，scrollDirection: Axis.vertical表示纵向滑动
      scrollDirection: Axis.horizontal,
      // 列之间的间距
      crossAxisSpacing: 15.0,
      // 行之间的间距
      mainAxisSpacing: 15.0,
      // 默认false 是否根据子孩子的宽高自动包裹item自身
      shrinkWrap: false,
      // true表示数据倒序排列 false表示顺序排列

      reverse: false,
      padding: EdgeInsets.only(left: 20.0, top: 10.0),
      // 子孩子的比例
      childAspectRatio: 1.0,
      // 设置子孩子item,这里传入子孩子控件BorderRadius
      children: <Widget>[
        new HomeTabView(
            icon: new Icon(Icons.home), title: new Text("口碑"), vsync: this),
        new HomeTabView(
            icon: new Icon(Icons.minimize), title: new Text("美团"), vsync: this),
        new HomeTabView(
            icon: new Icon(Icons.map), title: new Text("外卖"), vsync: this),
        new HomeTabView(icon: new Icon(Icons.zoom_out_map),
            title: new Text("会员"),
            vsync: this),
        new HomeTabView(
            icon: new Icon(Icons.zoom_out), title: new Text("开票"), vsync: this),
        new HomeTabView(icon: new Icon(Icons.wifi_tethering),
            title: new Text("统计"),
            vsync: this),
        new HomeTabView(
            icon: new Icon(Icons.wifi), title: new Text("账单"), vsync: this),
        new HomeTabView(
            icon: new Icon(Icons.web), title: new Text("更多"), vsync: this),
        new HomeTabView(
            icon: new Icon(Icons.web), title: new Text("测试Page"), vsync: this),

      ],
    );
  }

  Widget _CustomScrollView() {
    return new CustomScrollView(
      primary: true,
      slivers: <Widget>[
        new SliverPadding(
          padding: const EdgeInsets.all(20.0),
          sliver: new SliverGrid.count(
            crossAxisSpacing: 10.0,
            crossAxisCount: 2,
            children: <Widget>[
              new Text('He\'d have you all unravel at the',
                style: new TextStyle(color: Colors.red),),
              new Text('Heed not the rabble',
                  style: new TextStyle(color: Colors.red)),
              new Text('Sound of screams but the',
                  style: new TextStyle(color: Colors.red)),
              new Text('He\'d have you all unravel at the',
                style: new TextStyle(color: Colors.red),),
              new Text('Heed not the rabble',
                  style: new TextStyle(color: Colors.red)),
              new Text('Sound of screams but the',
                  style: new TextStyle(color: Colors.red)),
              new Text('He\'d have you all unravel at the',
                style: new TextStyle(color: Colors.red),),
              new Text('Heed not the rabble',
                  style: new TextStyle(color: Colors.red)),
              new Text('Sound of screams but the',
                  style: new TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _tabContent() {
    return new Container(
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(const Radius.circular(0.0)),
          color: Colors.white
      ),
      child: new Column(
        children: <Widget>[
          new Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 11.0),
            padding: EdgeInsets.only(bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Expanded(
                  flex: 1, child: new Container(
                  child: new FlatButton(onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context){
                      return new EnterPricePage(qrcode: "koubei",);
                    }));
                  }, child:
                  new Container(
                    child: new Column(
                        children: <Widget>[
                          new Container(
                            padding: new EdgeInsets.all(5.0),
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.all(
                                    const Radius.circular(10.0)),
                                color: Color(0xFFfd8752)
                            ),
                            margin: const EdgeInsets.only(bottom: 6.0),
                            child: new Image.asset(
                                "images/shoubei.png", color: Colors.white),
                          ),
                          new Container(
                            child: new Text("口碑", style:
                            new TextStyle(
                                color: Colors.black, fontSize: 16.0),),
                          )

                        ]
                    ),
                  )),

                ),),
                new Expanded(flex: 1, child: new Container(
                  child: new FlatButton(onPressed: () {}, child:
                  new Container(

                    child: new Column(
                      children: <Widget>[
                        new Container(
                          width: 40.0,
                          height: 40.0,
                          padding: new EdgeInsets.all(8.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.all(
                                  const Radius.circular(10.0)),
                              color: new Color(0xFF27d9b9)
                          ),
                          margin: const EdgeInsets.only(bottom: 6.0),
                          child: new Image.asset(
                              "images/meituan.png", color: Colors.white),
                        ),
                        new Container(
                          child: new Text("美团", style:
                          new TextStyle(color: Colors.black, fontSize: 16.0),),
                        )

                      ],
                    ),
                  )),
                ),),
                new Expanded(flex: 1, child: new Container(
                  child: new FlatButton(onPressed: () {}, child:
                  new Container(

                    child: new Column(
                      children: <Widget>[
                        new Container(
                          width: 40.0,
                          height: 40.0,
                          padding: new EdgeInsets.all(8.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.all(
                                  const Radius.circular(10.0)),
                              color: Color(0xFF6ac6f7)
                          ),
                          margin: const EdgeInsets.only(bottom: 6.0),
                          child: new Image.asset(
                              "images/waimai.png", color: Colors.white),
//                          child: new CircleAvatar(
//                            radius: 25.0,
//
//                            backgroundColor: new Color(0xFF088DB4),
//                          ),
                        ),
                        new Container(
                          child: new Text("外卖", style:
                          new TextStyle(color: Colors.black, fontSize: 16.0),),
                        )

                      ],
                    ),
                  )),
                ),),
                new Expanded(flex: 1, child: new Container(
                  child: new FlatButton(onPressed: () {}, child:
                  new Container(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          width: 40.0,
                          height: 40.0,
                          padding: new EdgeInsets.all(8.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.all(
                                  const Radius.circular(10.0)),
                              color: Color(0xFFfecb68)
                          ),
                          margin: const EdgeInsets.only(bottom: 6.0),
                          child: Image.asset("images/huiyuan.png"),
//                          child: new CircleAvatar(
//                            radius: 15.0,
//                            child: new Icon(Icons.shop, color: Colors.white),
//                            backgroundColor: new Color(0xFF088DB4),
//                          ),
                        ),
                        new Container(
                          child: new Text("会员", style:
                          new TextStyle(color: Colors.black, fontSize: 16.0),),
                        )

                      ],
                    ),
                  )),
                ),),
                new Expanded(flex: 1, child: new Container(
                  child: new FlatButton(onPressed: () {}, child:
                  new Container(

                    child: new Column(
                      children: <Widget>[
                        new Container(
                          width: 40.0,
                          height: 40.0,
                          padding: new EdgeInsets.all(8.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.all(
                                  const Radius.circular(10.0)),
                              color: Color(0xFF4ccbf5)
                          ),
                          margin: const EdgeInsets.only(bottom: 6.0),
                          child: new Icon(Icons.shop, color: Colors.white),
                        ),
                        new Container(
                          child: new Text("开票", style:
                          new TextStyle(color: Colors.black, fontSize: 16.0),),
                        )

                      ],
                    ),
                  )
                  ),
                )
                )
              ],
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: 11.0),
            padding: EdgeInsets.only(bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Expanded(flex: 1, child: new Container(
                  child: new FlatButton(onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new StatisticsPage()));
                  }, child:
                  new Container(
                    alignment: Alignment.topLeft,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          width: 40.0,
                          height: 40.0,
                          padding: new EdgeInsets.all(8.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.all(
                                  const Radius.circular(10.0)),
                              color: Color(0xff3be0e0)
                          ),
                          margin: const EdgeInsets.only(bottom: 6.0),
                          child: new Icon(Icons.shop, color: Colors.white),
//                          child: new CircleAvatar(
//                            radius: 15.0,
//                            child: new Icon(Icons.shop, color: Colors.white),
//                            backgroundColor: new Color(0xFF088DB4),
//                          ),
                        ),
                        new Container(
                          child: new Text("统计", style:
                          new TextStyle(color: Colors.black, fontSize: 16.0),),
                        )

                      ],
                    ),
                  )),
                ),),
                new Expanded(flex: 1, child: new Container(
                  child: new FlatButton(onPressed: () {}, child:
                  new Container(
                    alignment: Alignment.topLeft,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          width: 40.0,
                          height: 40.0,
                          padding: new EdgeInsets.all(8.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.all(
                                  const Radius.circular(10.0)),
                              color: Color(0xffd993fa)
                          ),
                          margin: const EdgeInsets.only(bottom: 6.0),
                          child: new Icon(Icons.shop, color: Colors.white),
//                          child: new CircleAvatar(
//                            radius: 15.0,
//                            child: new Icon(Icons.shop, color: Colors.white),
//                            backgroundColor: new Color(0xFF088DB4),
//                          ),
                        ),
                        new Container(
                          child: new Text("账单", style:
                          new TextStyle(color: Colors.black, fontSize: 16.0),),
                        )

                      ],
                    ),
                  )),
                ),),
                new Expanded(flex: 1,
                  child: new Container(
                  child: new FlatButton(onPressed: () {}, child:
                  new Container(
                    alignment: Alignment.topLeft,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          width: 40.0,
                          height: 40.0,
                          padding: new EdgeInsets.all(8.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.all(
                                  const Radius.circular(10.0)),
                              color: Color(0xfffdb671)

                          ),
                          margin: const EdgeInsets.only(bottom: 6.0),
                          child: new Icon(Icons.shop, color: Colors.white),
                        ),
                        new Container(
                          child: new Text("更多", style:
                          new TextStyle(color: Colors.black, fontSize: 16.0),),
                        )

                      ],
                    ),
                  )),
                ),
                ),

                new Expanded(
                    flex: 1,
                  child: new Container(
                    child: new FlatButton(onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context){
                        return new TestPage();
                      }));
                    }, child:
                    new Container(
                      alignment: Alignment.topLeft,
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            width: 40.0,
                            height: 40.0,
                            padding: new EdgeInsets.all(8.0),
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.all(
                                    const Radius.circular(10.0)),
                                color: Color(0xfffdb671)

                            ),
                            margin: const EdgeInsets.only(bottom: 6.0),
                            child: new Icon(Icons.shop, color: Colors.white),
                          ),
                          new Container(
                            child: new Text("测试", style:
                            new TextStyle(color: Colors.black, fontSize: 16.0),),
                          )

                        ],
                      ),
                    )),
                  ),
                ),
                new Expanded(flex: 1, child: new Container(
                  child: null,
                ),),
              ],
            ),
          ),
          new Container(
            color: Color(0xFFececed),
            height: 5.0,
          )
        ],
      ),
    );
  }

  Widget titleBar() {
    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new Container(

            child: new Icon(Icons.web, color: Colors.white,),
          )
        ],
      ),
    );
  }
}