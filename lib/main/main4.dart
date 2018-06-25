import 'package:flutter/material.dart';
import 'package:flutter_project/base/basewidget.dart';

class MainWidget4 extends BaseWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MainWidget4StatefulWidget(),
    );
  }
}

class MainWidget4StatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Main4State();
}

class Main4State extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  }
}
