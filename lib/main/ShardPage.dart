import 'package:flutter/material.dart';
import 'package:share/share.dart';
class ShardPage extends StatefulWidget {
  @override
  ShardPageState createState() => new ShardPageState();
}

class ShardPageState extends State<ShardPage> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('分享'),
      ),
      body: new Padding(
        padding: EdgeInsets.all(24.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: const InputDecoration(
                labelText: 'Share:',
                hintText: 'Enter some text and/or link to share',
              ),
              maxLines: 2,
              onChanged: (String value) => setState(() {
                text = value;
              }),
            ),
            const Padding(padding: EdgeInsets.only(top: 24.0)),
            new Builder(
              builder: (BuildContext context) {
                return new RaisedButton(
                  child: const Text('Share'),
                  onPressed: text.isEmpty
                      ? null
                      : () {
                    // A builder is used to retrieve the context immediately
                    // surrounding the RaisedButton.
                    //
                    // The context's `findRenderObject` returns the first
                    // RenderObject in its descendent tree when it's not
                    // a RenderObjectWidget. The RaisedButton's RenderObject
                    // has its position and size after it's built.
                    final RenderBox box = context.findRenderObject();
                    Share.share(text,
                        sharePositionOrigin:
                        box.localToGlobal(Offset.zero) &
                        box.size);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}