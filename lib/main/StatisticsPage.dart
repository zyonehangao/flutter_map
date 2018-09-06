import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:shoubei_app/QrreaderPage/DonutAutoLabelChart.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
class StatisticsPage extends StatefulWidget {


  @override
  StatisticsPageState createState() => new StatisticsPageState();
}

final List<charts.Series<int, String>> chartData1 = [
  charts.Series<int, String>(
      id: 'barChart',
      colorFn: (value, index) => charts.MaterialPalette.deepOrange.shadeDefault,
      domainFn: (value, index) {
        return index.toString();
      },
      measureFn: (value, index) {
        return value;
      },
      data: [30, 1, 1, 2, 3, 5, 21, 13, 21, 34, 55, 30]
  )
];


final List<charts.Series<int, int>> chartData3 = [
  charts.Series<int, int>(
      id: 'pieChart',
      domainFn: (value, index) {
        return index;
      },
      measureFn: (value, index) {
        return value;
      },
      data: [30, 10, 1, 2]
  )
];
final List<charts.Series<int, int>> chartData2 = [
  charts.Series<int, int>(
      id: 'lineChart',
      colorFn: (value, index) => charts.MaterialPalette.black.lighter,
      domainFn: (value, index) {
        return index;
      },
      measureFn: (value, index) {
        return value;
      },
      data: [10, 12, 14, 25, 31, 52, 41, 31, 52, 66, 22, 11]
  )
];

class StatisticsPageState extends State<StatisticsPage> {
  List<charts.Series> seriesList;

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("统计"),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            alignment: Alignment.center,
            child: new Container(
              alignment: Alignment.center,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Expanded(flex: 1, child: new Container(
                          padding: new EdgeInsets.all(5.0),
                          child: new FlatButton(
                              onPressed: () {}, child: new Row(
                            children: <Widget>[
                              new Text("商户", style: new TextStyle(
                                  color: Colors.black, fontSize: 13.0),),
                              new SizedBox(width: 5.0,),
                              new Icon(Icons.file_download, size: 15.0,)
                            ],
                          )),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(end: BorderSide(
                                  color: Colors.blue, width: 0.5))
                          ),
                        ),),
                        new Expanded(flex: 1, child: new Container(
                          padding: new EdgeInsets.all(5.0),
                          child: new FlatButton(
                              onPressed: () {}, child: new Row(
                            children: <Widget>[
                              new Text("商户", style: new TextStyle(
                                  color: Colors.black, fontSize: 13.0),),
                              new SizedBox(width: 5.0),
                              new Icon(Icons.file_upload, size: 15.0,)
                            ],
                          )),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(end: BorderSide(
                                  color: Colors.blue, width: 0.5))
                          ),
                        ),),

                        new Expanded(flex: 2, child: new Container(
                          padding: new EdgeInsets.all(5.0),
                          child: new FlatButton(
                              onPressed: () {}, child: new Row(
                            children: <Widget>[
                              new Text("账单日", style: new TextStyle(
                                  color: Colors.black, fontSize: 12.0),),
                              new SizedBox(width: 5.0),
                              new Icon(Icons.file_upload, size: 15.0,),
                              new Text("2018-07-26", style: new TextStyle(
                                  color: Colors.black, fontSize: 12.0),),
                            ],
                          )),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(end: BorderSide(
                                  color: Colors.blue, width: 0.5))
                          ),
                        ),)

                      ],
                    ),
                    decoration: new BoxDecoration(
                        border: new BorderDirectional(
                          bottom: BorderSide(color: Colors.blue, width: 0.5),)
                    ),
                  ),

                  new Container(
                    margin: new EdgeInsets.all(10.0),
                    padding: new EdgeInsets.only(left: 5.0),
                    alignment: Alignment.centerLeft,
                    child: new Text("数据统计",
                      style: new TextStyle(fontSize: 14.0, color: Colors.black
                      ),),
                    decoration: new BoxDecoration(
                        border: new BorderDirectional(
                            start: BorderSide(color: Colors.red, width: 5.0,))
                    ),
                  ),
//                  new Container(
//                    width: 200.0,
//                    height: 200.0,
//                    child: new DonutAutoLabelChart(chartData3),
//                  ),
                new Container(

                ),
//                  new ListView.builder(
//                    padding: new EdgeInsets.all(1.0),
//                    itemCount: 5,
//                    itemBuilder: (BuildContext context, int index) {
//                      return new Container(
//                        child: new Row(
//                          children: <Widget>[
//                            new Text("汇总"),
//                            new Text("1000"),
//                            new Text("0.01"),
//                          ],
//                        ),
//                      );
//                    },
//                  ),
                ],
              ),
            ),
          ),
        )
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    seriesList = [
      charts.Series<int, int>(
          id: 'lineChart',
          colorFn: (value, index) => charts.MaterialPalette.black.lighter,
          domainFn: (value, index) {
            return index;
          },
          measureFn: (value, index) {
            return value;
          },
          data: [10, 12, 14, 25, 31]
      )
    ];
  }

  ListView getTypeData(int number) {
    return new ListView(
    children: <Widget>[
      new Container(
        child: new Row(
          children: <Widget>[
            new Text("汇总"),
            new Text("1000"),
            new Text("0.01"),
          ],
        ),
      ),
    ],
    );
  }
}


class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}

