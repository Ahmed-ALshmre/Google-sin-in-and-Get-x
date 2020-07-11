import 'package:flutter/material.dart';
import 'package:new_project/model/class_test.dart';

class MyHomePage extends StatefulWidget {
  String name;
  bool isLoding;
  int num;
  Widget screen;
  MyHomePage({this.name, this.isLoding, this.num, this.screen});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Test _test = Test();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(_test.names),
      ),
    );
  }
}
