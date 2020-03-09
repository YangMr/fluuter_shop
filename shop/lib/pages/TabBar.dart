//引入ui库
import 'package:flutter/material.dart';
//引入主页
import 'package:shop/pages/HomePage.dart';
//引入分类
import 'package:shop/pages/CategoryPage.dart';
//引入购物车
import 'package:shop/pages/CartPage.dart';
//引入我的
import 'package:shop/pages/MyPage.dart';

//定义TabBar
class TabBarPage extends StatefulWidget {
  TabBarPage({Key key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {

  //定义一个变量，用来保存tabbar切换的下表
  var _currentIndex = 0;

  //把切换的页面保存到数组
  List pageList = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MyPage()
  ];

  @override
  Widget build(BuildContext context) {
    //使用脚手架组件 -- scaffold
    return Scaffold(
      //定义标题栏
      appBar: AppBar(
        title : Text("积云商城"),
      ),
      //定义主体内容
      body : pageList[this._currentIndex],
      //定义底部导航
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("分类")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("购物车")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text("我的")
          )
        ],
      ),
    );
  }
}