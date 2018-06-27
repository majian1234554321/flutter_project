import 'package:flutter/material.dart';

class MainWidget2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Main2State();
  }
}

class Main2State extends State<MainWidget2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("商城"),
        centerTitle: true,
      ),
      body: new ListView(
        children: <Widget>[],
      ),
    );
  }
}
