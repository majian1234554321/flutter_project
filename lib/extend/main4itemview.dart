import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new Main4ItemView(),
    ),
  );
}

class Main4ItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(children: <Widget>[
      new Text(
        '红色+黑色删除线+25号',
        style: new TextStyle(
          color: const Color(0xffff0000),
          decoration: TextDecoration.lineThrough,
          decorationColor: const Color(0xff000000),
          fontSize: 25.0,
        ),
      )
    ])
    );
  }
}

/*
class Main4ItemState extends State {


 // Main4ItemState()
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Container(
      color: Colors.white,
      height: 30.0,
      child: new Row(
        children: <Widget>[
          new Icon(Icons.ac_unit),
          new Text(
            "1212",
            style: new TextStyle(
              fontSize: 20.0,
              decoration: TextDecoration.lineThrough,

            ),
          ),
          new Text("1212"),
        ],
      ),
    ));
  }
}
*/
