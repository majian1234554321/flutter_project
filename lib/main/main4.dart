import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/base/basewidget.dart';
import 'package:flutter_project/model.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';




class MainWidget4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Main4State();
}

class Main4State extends State {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  loadData();
  }

  String values = '';

  Widget _buildColumnItem(String cover, String text, bool flag, String cover2) {
    return new Column(
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
          child: new Row(
            children: <Widget>[
              new Image.asset(
                cover,
                width: 30.0,
                height: 20.0,
              ),
              new Expanded(
                child: new Text(text),
              ),
              new Text("12张可用", style: TextStyle(color: Colors.red)),
              new Image.asset(
                cover2,
                width: 30.0,
                height: 15.0,
              )
            ],
          ),
        ),
        new Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Row(
          children: <Widget>[
            new Container(
              child: new Image.asset(
                'graphics/mine_shopping_basket.png',
              ),
              width: 30.0,
              height: 30.0,
            ),
            new Expanded(
              child: new Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("我的"),
                ],
              ),
            ),
            new Image.asset(
              'graphics/mine_message.png',
              width: 30.0,
              height: 30.0,
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          _buildColumnItem(
            'graphics/mine_love_coin.png',
            "我的会员卡",
            false,
            'graphics/icon_right_arrow.png',
          ),
          _buildColumnItem('graphics/mine_order.png', "我的订单", false,
              'graphics/icon_right_arrow.png'),
          _buildColumnItem('graphics/mine_coupon.png', "我的优惠券", true,
              'graphics/icon_right_arrow.png'),
          _buildColumnItem('graphics/mine_yaoqing.png', "邀请有礼", false,
              'graphics/icon_right_arrow.png'),
        ],
      ),
    );
  }

  void loadData() async {
    var jsonValue =
        await http.read('https://jsonplaceholder.typicode.com/posts/1');
    // await http.read('https://wwww.baidu.com');

    Map userMap = json.decode(jsonValue);
    var model = new Model.fromJson(userMap);
    print('值是' + model.title);

    setState(() {
      values = model.id.toString();
    });
  }
}
