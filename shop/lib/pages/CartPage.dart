//引入ui库
import 'package:flutter/material.dart';

//创建组件
class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("购物车"),
    );
  }
}