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


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //轮播图
        _swiperWidget(),

      ],
    );
  }
}
