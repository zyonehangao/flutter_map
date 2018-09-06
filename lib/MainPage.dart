import 'package:flutter/material.dart';
import 'package:shoubei_app/main/HomePage.dart';
import 'package:shoubei_app/main/MinePage.dart';
import 'package:shoubei_app/main/NavigationIconView.dart';
import 'package:shoubei_app/main/OrderPage.dart';


class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => new MainPageState();
}

class MainPageState extends State<MainPage> with TickerProviderStateMixin{
  //默认寻找第一个page
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;
  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar =new BottomNavigationBar(
        items: _navigationViews.map((navigationIconView){
          return navigationIconView.item;
        }).toList(),
      currentIndex: _currentIndex,
      fixedColor: Colors.yellow[900],
      type: BottomNavigationBarType.fixed,
      onTap: (int index){
          setState(() {
            _navigationViews[_currentIndex].controller.reverse();
            _currentIndex = index;
            _navigationViews[_currentIndex].controller.forward();
            _currentPage = _pageList[_currentIndex];
          });
      },
    );
    return new Scaffold(
        body: new Container(
          child: _currentPage,
        ),
        bottomNavigationBar: bottomNavigationBar
    );
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigationViews =[
      new NavigationIconView(icon: new Icon(Icons.home),title: new Text("首页"),vsync:this ),
      new NavigationIconView(icon: new Icon(Icons.assignment),title: new Text("订单"),vsync:this ),
      new NavigationIconView(icon: new Icon(Icons.person_pin),title: new Text("我的"),vsync:this )
    ];

    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
}

    _pageList=[
      new HomePage(),
      new OrderPage(),
      new MinePage()
    ];
    _currentPage = _pageList[_currentIndex];
  }

  @override
  void dispose() {
    super.dispose();
    for(NavigationIconView view in _navigationViews){
      view.controller.dispose();
    }
  }



  void _rebuild() {
    setState((){});

  }
}

