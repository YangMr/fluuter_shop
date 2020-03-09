//引入ui库
import 'package:flutter/material.dart';

//引入路由文件
import 'package:shop/router/routes.dart';

//定义入口函数以及runApp方法
void main() => runApp(MyApp());

//创建自定义组件
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //返回顶层ui组件
    return MaterialApp(
        //定义标题
        title: "积云商城",
        //去除debug
        debugShowCheckedModeBanner: false,
        //定义主页
        // home: TabBarPage()
        //初始化路由加载的页面
        initialRoute: "/",
        //挂载路由
        onGenerateRoute: onGenerateRoute,
      );
  }
}


