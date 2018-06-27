import 'package:flutter/material.dart';

final List<Tab> myTabs = <Tab>[
  new Tab(text: '推荐'),
  new Tab(text: '关注'),
  new Tab(text: '广场'),
];

class MainWidget1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Main1State();
  }
}

class Main1State extends State<MainWidget1>
    with SingleTickerProviderStateMixin {
  var _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(
        vsync: this, //动画效果的异步处理，默认格式，背下来即可
        length: myTabs.length //需要控制的Tab页数量
        );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new TabBar(
          controller: _tabController,
          tabs: myTabs, //使用Tab类型的数组呈现Tab标签
          indicatorColor: Colors.white,
          isScrollable: true,
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          return new Center(child: new Text(tab.text + '   1')); //使用参数值
        }).toList(),
      ),

    );
  }
}
