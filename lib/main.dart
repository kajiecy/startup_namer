import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'first hello',
      theme: ThemeData(
          primarySwatch:Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('first App bar'),
        ),
        body:Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
              'Hello Word2!你好，世界Hello Word2!你好，世界Hello Word2!你好，世界Hello Word2!你好，世界',
              style:TextStyle(
                color: Color(0xFF0000FF),
                fontSize: 28.0,
                textBaseline:TextBaseline.alphabetic,
//                  backgroundColor:Color(0x592547FF),
                fontStyle:FontStyle.italic,
                letterSpacing:2.0,//字母之间的间距
                wordSpacing:2.0,//字母之间的间距
//                  height:0, //文本的高度?
//                  foreground:new Paint()..color = Color(0xFBBB4D00),//前景 和 color 互斥
                background:new Paint()..color = Color(0x592547FF),//背景
                shadows:[
//                      new Shadow(color: Colors.red,blurRadius: 8,offset: Offset(0, 0)),
                  new Shadow(color: Colors.cyan,blurRadius: 8,offset: Offset(0, 2)),
//                      new Shadow(color: Colors.green,blurRadius: 8,offset: Offset(0, 0))
                ],//给文字添加阴影
                decoration:TextDecoration.combine([
                  TextDecoration.underline,
                  TextDecoration.lineThrough,
                  TextDecoration.overline,
                  TextDecoration.overline,
                ]), // 设置下划线
                decorationColor:Colors.orange,// 下划线颜色
                decorationStyle:TextDecorationStyle.double,// 下划线样式
                fontFamily:'宋体',// 字体
              ), // 文本样式
              key:Key('111'), // key
              strutStyle:StrutStyle(
                  fontSize: 10,
                  height:5
              ), // 设置每行的最小行高
              textAlign:TextAlign.center,
              textDirection:TextDirection.rtl,
              softWrap:true,
              overflow:TextOverflow.fade, //文本的截断方式
              textScaleFactor:1, // 缩放，
              maxLines:2 // 最多显示行数

          ),
        )
      ),
    );
  }
}