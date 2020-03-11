//引入ui库
import 'package:flutter/material.dart';

//引入适配库
import '../utils/screen.dart';

//创建组件
class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  //获取左侧菜单的宽度 = 屏幕的宽度 / 4
  var leftWidth = getScreenWidth() / 4;
  //创建一个变量,保存点击右侧菜单的下标
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //屏幕适配初始化
    setInit(context);
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: leftWidth,
            height: double.infinity,
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        color: _currentIndex == index ? Colors.red : Colors.white,
                        width: double.infinity,
                        height: setWidth(84),
                        child: Center(
                          child: Text(
                            "第$index条",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          this._currentIndex = index;
                        });
                      },
                    ),
                    Divider(height: 0),
                  ],
                );
              },
            ),
            // color: Colors.red,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context,index){
                  return Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1/1,
                        child: Container(
                          color : Colors.yellow
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
