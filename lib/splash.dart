import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State {
  @override
  Widget build(BuildContext context) {
    // ...

    return new MaterialApp(
        routes: {
          "nameRoute": (BuildContext context) => new MainWidget(),
        },
        home: new DecoratedBox(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('graphics/bg_splash.webp'),
              // ...
            ),
            // ...
          ),
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //  loadPager();
  }

  loadPager() {
    //await //后面执行耗时操作
    //跳转到新的的界面

//    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
//      return new MainActivity();
//    }));

     Navigator.pushNamed(context, "nameRoute");
  }
}


