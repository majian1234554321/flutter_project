import 'package:flutter/material.dart';
import 'package:flutter_project/main/main1.dart';
import 'package:flutter_project/main/main2.dart';
import 'package:flutter_project/main/main3.dart';
import 'package:flutter_project/main/main4.dart';

void main() {
  runApp(new MainWidget());
}

class MainWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainState();
  }
}

class MainState extends State<MainWidget> with SingleTickerProviderStateMixin {
  var bottomNavigationBarIndex = 0;
  var _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = new TabController(
        vsync: this, //动画效果的异步处理，默认格式，背下来即可
        length: myTabs.length, //需要控制的Tab页数量
      initialIndex: 2,

    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<StatefulWidget> list = <StatefulWidget>[
    new MainWidget3(),
    new MainWidget2(),
    new MainWidget1(),
    new MainWidget2(),
  ];


  final List<Tab> list2 = <Tab>[
    new Tab(icon: new Icon(Icons.directions_car)),
    new Tab(icon: new Icon(Icons.directions_transit)),
    new Tab(icon: new Icon(Icons.directions_bike)),
    new Tab(icon: new Icon(Icons.face)),
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          body: new TabBarView(
            controller: _tabController,
            children: list),
          bottomNavigationBar: new TabBar(
          controller: _tabController,
          tabs: list2,

      ),
    ),);
  }
}
