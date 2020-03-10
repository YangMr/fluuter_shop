//引入适配库插件
import 'package:flutter_screenutil/flutter_screenutil.dart';

//设置初始化的方法
setInit(context){
  //设置字体大小根据系统的“字体大小”辅助选项来进行缩放,默认为false
  ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
}

//设置宽度的方法
setHeight(double value){
  return ScreenUtil().setHeight(value);
}
//设置高度的方法
setWidth(double value){
  return ScreenUtil().setHeight(value);
}
//获取设备的宽度
getScreenWidth(){
  return ScreenUtil.screenWidth;
}
//获取设备的高度
getScreeHeight(){
  return ScreenUtil.screenHeight;
}

