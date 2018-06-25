import 'package:flutter/material.dart';
import 'package:flutter_project/main/main4.dart';

class MainWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainState();
  }
}

class MainState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: new PageView.builder(
//          onPageChanged:_pageChange,
//          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return new PageView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    switch (index) {
                      case 0:
                        return new Text("首页0");
                        break;
                      case 1:
                        return new Text("首页1");
                        break;
                      case 2:
                        return new Text("首页2");
                        break;
                    }
                  },
                  itemCount: 3,
                );
                break;
              case 1:
                return new Text("课程");
                break;
              case 2:
                return new Text("商城");
                break;
              case 3:
                return new MainWidget4();
                break;
            }
          },
          itemCount: 4,
        ),
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: new Icon(Icons.cached), title: new Text("首页")),
            BottomNavigationBarItem(
                icon: new Icon(Icons.message), title: new Text("课程")),
            BottomNavigationBarItem(
                icon: new Icon(Icons.message), title: new Text("商城")),
            BottomNavigationBarItem(
                icon: new Icon(Icons.message), title: new Text("我的")),
          ],
          onTap: (int index) {},
        ),
      ),
    );
  }
}
