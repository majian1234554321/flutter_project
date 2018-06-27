import 'package:flutter/material.dart';

class MainWidget3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Main3State();
  }
}

class Main3State extends State<MainWidget3> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("商城3"),
        centerTitle: true,
      ),
      body: new ListView(
        children: <Widget>[],
      ),
    );
  }
}
