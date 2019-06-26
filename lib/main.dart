import 'package:flutter/material.dart';
import 'package:demo_app/tabs/home.dart';
import 'package:demo_app/tabs/info.dart';
import 'package:demo_app/tabs/liveData.dart';
import 'package:demo_app/tabs/alarm.dart';
import 'package:demo_app/tabs/history.dart';
import 'package:demo_app/tabs/contact.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Demo',
    home: new MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyHomeState();
  }
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    //init tab controller
    controller = new TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return new TabBar(
      tabs: <Tab>[
        new Tab(
          child: new Text('1'),
        ),
        new Tab(
          child: new Text('2'),
        ),
        new Tab(
          child: new Text('3'),
        ),
        new Tab(
          child: new Text('4'),
        ),
        new Tab(
          child: new Text('5'),
        ),
        new Tab(
          child: new Text('6'),
        ),
      ],
      controller: controller,
    );
  }

TabBarView getTabBarView(var tabs){
  return new TabBarView(
    // add the passing tabs as widgets
    children: tabs,
    controller: controller,
  );
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo"),
        backgroundColor: Colors.blue,
        bottom: getTabBar(),
      ),
      body: getTabBarView(<Widget>[new Home(),new Info(), new LiveData(), new History(), new Alarm(), new Contact()]),
    );
  }
}
