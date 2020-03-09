//引入ui库
import 'package:flutter/material.dart';

//引入轮播图插件
import 'package:flutter_swiper/flutter_swiper.dart';

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

  //封装标题组件
  Widget _titleWidget(title) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 10),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Colors.red, width: 6),
        ),
      ),
    );
  }

  //封装猜你喜欢列表
  Widget _loveItem() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10),
          width: 80,
          height: 80,
          child: Image.network("https://www.itying.com/images/flutter/hot1.jpg",
              fit: BoxFit.cover),
        ),
        Text("第0条")
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //轮播图
        _swiperWidget(),

        //定义猜你喜欢标题
        _titleWidget("猜你喜欢"),

        //定义左右滑动的推荐商品列表
        Container(
          height: 100,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),
              _loveItem(),

            ],
          ),
        ),

        //定义热门推荐标题
        _titleWidget("热门推荐"),
      ],
    );
  }
}
