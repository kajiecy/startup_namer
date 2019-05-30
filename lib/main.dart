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
        body:Column(
          children: <Widget>[
            Text(
                'Hello Word2!你好，世界Hello Word2!你好，世界Hello Word2!你好，世界Hello Word2!你好，世界',
                style:TextStyle(
                  color: Color(0xFF0000FF),
                  fontSize: 28.0,
                  textBaseline:TextBaseline.alphabetic,
//              backgroundColor:Color(0x592547FF),
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
                  ]), // 设置下划线
                  decorationColor:Colors.orange,// 下划线颜色
                  decorationStyle:TextDecorationStyle.double,// 下划线样式
                  fontFamily:'Raleway',// 字体
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
            RichText(
              text: TextSpan(children: [
                TextSpan(text: "Hello", style: TextStyle(color: Colors.blue)),
                TextSpan(text: "Flutter", style: TextStyle(color: Colors.red))
              ]),
            ),
            Image.network(
              "http://qiniu.kajie88.com/28913648.jpg",
//                scale:1, // 缩放
                width:100,
                height:200,
                color:Colors.cyan, // 添加混色
                colorBlendMode:BlendMode.hue, // 混色策略
                fit:BoxFit.fill, // 填充策略
                alignment:Alignment(0, 0), //对齐方式
                repeat:ImageRepeat.repeat, // 重复策略
                centerSlice:Rect.fromPoints(Offset(0, 0), Offset(1, 1)), // ???
                matchTextDirection:false, // 图像的绘制方向 true:从左往右 false:从右往左
                filterQuality:FilterQuality.high, //图像质量
            ),
//            Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557781801455&di=17f9f2fc3ded4efb7214d2d8314e8426&imgtype=0&src=http%3A%2F%2Fimg2.mukewang.com%2F5b4c075b000198c216000586.jpg"),
          ],
        )
      ),
    );
  }
}