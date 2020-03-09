//引入ui库
import 'package:flutter/material.dart';

//定义TabBar
class TabBarPage extends StatefulWidget {
  TabBarPage({Key key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("积云商城"),
      ),
      body : Center(child: Text("hello wolrd"),),
    );
  }
}