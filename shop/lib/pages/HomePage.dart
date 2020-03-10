//引入ui库
import 'package:flutter/material.dart';

//引入轮播图插件
import 'package:flutter_swiper/flutter_swiper.dart';

//引入封装的ui插件库
import '../utils/screen.dart';

//创建组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //轮播图组件
  Widget _swiperWidget() {
    //模拟轮播图数据
    List<Map> swiperUrl = [
      {"url": "https://www.itying.com/images/flutter/slide01.jpg"},
      {"url": "https://www.itying.com/images/flutter/slide02.jpg"},
      {"url": "https://www.itying.com/images/flutter/slide03.jpg"},
    ];
    return Container(
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              swiperUrl[index]['url'],
              fit: BoxFit.cover,
            );
          },
          itemCount: swiperUrl.length,
          autoplay: true,
          pagination: new SwiperPagination(),
        ),
      ),
    );
  }

  //封装的是title组件
  Widget _titleWidget(title) {
    return Container(
      height: setHeight(32),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Colors.red, width: setWidth(10)),
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(left: setWidth(10)),
      child: Text(
        title,
        style: TextStyle(color: Colors.black54),
      ),
    );
  }

  //猜你喜欢商品列表组件
  Widget _loveProductListWidget() {
    //模拟猜你喜欢商品列表的数据
    List<Map> loveProductList = [
      {"url": "https://www.itying.com/images/flutter/hot1.jpg", "title": "上衣"},
      {"url": "https://www.itying.com/images/flutter/hot2.jpg", "title": "裤子"},
      {"url": "https://www.itying.com/images/flutter/hot3.jpg", "title": "连衣裙"},
      {"url": "https://www.itying.com/images/flutter/hot4.jpg", "title": "上衣"},
      {"url": "https://www.itying.com/images/flutter/hot5.jpg", "title": "裤子"},
      {"url": "https://www.itying.com/images/flutter/hot6.jpg", "title": "连衣裙"},
      {"url": "https://www.itying.com/images/flutter/hot7.jpg", "title": "上衣"},
      {"url": "https://www.itying.com/images/flutter/hot8.jpg", "title": "裤子"},
      {"url": "https://www.itying.com/images/flutter/hot9.jpg", "title": "连衣裙"},
      {"url": "https://www.itying.com/images/flutter/hot10.jpg", "title": "上衣"},
    ];

    return Container(
        height: setHeight(190),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Container(
                  width: setWidth(140),
                  height: setHeight(140),
                  margin: EdgeInsets.only(right: setWidth(21)),
                  child: Image.network(
                      loveProductList[index]["url"],
                      fit: BoxFit.cover),
                ),
                Container(
                    padding: EdgeInsets.only(top: setHeight(10)),
                    child: Text(loveProductList[index]['title']),
                  ),
              ],
            );
          },
          itemCount: loveProductList.length,
        ));
  }

  @override
  Widget build(BuildContext context) {
    //调用适配库初始化的方法
    setInit(context);

    //返回listview组件
    return ListView(
      children: <Widget>[
        //轮播图
        _swiperWidget(),

        //设置间距
        SizedBox(height: setHeight(20)),

        //猜你喜欢标题
        _titleWidget("猜你喜欢"),

        //设置间距
        SizedBox(height: setHeight(20)),

        //猜你喜欢商品列表
        _loveProductListWidget(),

        //设置间距
        SizedBox(height: setHeight(10)),

        //热门推荐标题
        _titleWidget("热门推荐")
      ],
    );
  }
}
