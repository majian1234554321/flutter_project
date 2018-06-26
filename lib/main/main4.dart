import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/base/basewidget.dart';
import 'package:flutter_project/model.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

void main() => runApp(new MainWidget4());

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
  void initState() {
    // TODO: implement initState
    super.initState();


  }


   String values = '';

  @override
  Widget build(BuildContext context) {

   // loadData();

    return new ListView(
      children: <Widget>[
        new Text(values),
        new Text(''),
        new Text('Row Three'),
        new Text(''),
      ],
    );
  }

  void loadData() async {
    var jsonValue =
        await http.read('https://jsonplaceholder.typicode.com/posts/1');
  //  print(jsonValue);
    Map userMap = json.decode(jsonValue);
    var model = new Model.fromJson(userMap);
    print('值是'+model.title);

    setState(() {
      values = model.id.toString();
    });
  }
}
