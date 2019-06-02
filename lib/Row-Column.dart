import 'package:flutter/material.dart';

void main() => runApp(RowWidget());

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter布局Widget -- 线性布局")),
          body: Container(
            color: Colors.lightBlueAccent,
            constraints: BoxConstraints.tightFor(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start, //在主轴的对其方式 (横轴)
              mainAxisSize: MainAxisSize.max, //主轴是否撑满
              textDirection: TextDirection.ltr,// 主轴的布局顺序
              textBaseline: TextBaseline.ideographic,
              crossAxisAlignment: CrossAxisAlignment.center,//交叉轴的对钱策略
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                Text("Hello Flutter"),
                Image.asset(
                  "assets/images/cat1.jpg",
                  width: 200,
                )
              ],
            ),
          ),
      ),
    );
  }
}
