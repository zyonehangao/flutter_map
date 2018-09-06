import 'dart:async';

import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
class ScanPage extends StatefulWidget {
  @override
  ScanPageState createState() => new ScanPageState();
}

class ScanPageState extends State<ScanPage> {
  String barcode = "";
  Future<String> _barcodeString;
  final Map<String, dynamic> pluginParameters = {
  };
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: new AppBar(
          title: new Text('QR Code Scanner'),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    splashColor: Colors.blueGrey,
                    onPressed: scan,
                    child: const Text('START CAMERA SCAN')
                ),
              )
              ,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(barcode, textAlign: TextAlign.center,),
              )
              ,
            ],
          ),
        ));
//      new Scaffold(
//      appBar: new AppBar(
//        title: const Text('QRCode Reader Example'),
//      ),
//      body: new Center(
//          child: new FutureBuilder<String>(
//              future: _barcodeString,
//              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//                return new Text(snapshot.data != null ? snapshot.data : '');
//              })),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: () {
//          setState(() {
//            _barcodeString = new QRCodeReader()
//                .setAutoFocusIntervalInMs(200)
//                .setForceAutoFocus(true)
//                .setTorchEnabled(true)
//                .setHandlePermissions(true)
//                .setExecuteAfterPermissionGranted(true)
//                .scan();
//          });
//        },
//        tooltip: 'Reader the QRCode',
//        child: new Icon(Icons.add_a_photo),
//      ),
//    );

//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("扫码收款"),
//      ),
//        body: new Center(
//          child: new Column(
//            children: <Widget>[
//              new Container(
//                child: new MaterialButton(
//                    onPressed:(){
//
//                    }, child: new Text("Scan"),),
//                padding: const EdgeInsets.all(8.0),
//              ),
//              new Text(barcode),
//            ],
//          ),
//        ),
//    );
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode ,);
//      Navigator.pop(context);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException{
      setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }

  @override
  initState() {
    super.initState();
  }
}
