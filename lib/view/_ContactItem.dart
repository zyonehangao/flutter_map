import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final IconData icon;
  final List<String> lines;
  final String tooltip;
  final VoidCallback onPressed;

    ContactItem({ Key key, this.icon, this.lines, this.tooltip, this.onPressed })
      : assert(lines.length > 1),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final List<Widget> columnChildren = lines.sublist(0, lines.length - 1).map((
        String line) => new Text(line)).toList();
    columnChildren.add(
        new Text(lines.last, style: themeData.textTheme.caption));
    final List<Widget> rowChildren = <Widget>[
      new Expanded(child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: columnChildren
      ))
    ];

    if (icon != null) {
      rowChildren.add(new SizedBox(
          width: 72.0,
          child: new IconButton(
              icon: new Icon(icon),
              color: themeData.primaryColor,
              onPressed: onPressed
          )
      ));
      return new MergeSemantics(
        child: new Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: rowChildren
            )
        ),
      );
    }
  }
}