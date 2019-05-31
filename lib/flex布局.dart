import 'package:flutter/material.dart';

void main() => runApp(MyApp("Hello World"));

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  String content;

  MyApp(this.content);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void increment() {
    setState(() {
      widget.content += "d";
    });
  }

  @override
  Widget build(BuildContext context) {
    Paint paint = Paint();
    paint.color = Colors.green;
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Box Constraints"),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    'direction : 主轴的方向',
                    style: TextStyle(fontSize: 18),
                  ),
                  padding: EdgeInsets.only(top: 5,bottom: 5),
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints.tight(Size(100, 40)),
                      color: Colors.amberAccent,
                    ),
                    Container(
                      constraints: BoxConstraints.tight(Size(120, 60)),
                      color: Colors.green,
                    ),
                    Container(
                      constraints: BoxConstraints.tight(Size(80, 40)),
                      color: Colors.lightBlue,
                    ),
                  ],
                ),
                new Divider(),
                Container(
                  child: Text(
                    'mainAxisAlignment ：子Widget 在主轴的对齐方式',
                    style: TextStyle(fontSize: 18),
                  ),
                  padding: EdgeInsets.only(top: 5,bottom: 5),
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints.tight(Size(40, 40)),
                      color: Colors.amberAccent,
                    ),
                    Container(
                      constraints: BoxConstraints.tight(Size(40, 60)),
                      color: Colors.green,
                    ),
                    Container(
                      constraints: BoxConstraints.tight(Size(40, 40)),
                      color: Colors.lightBlue,
                    ),
                    Container(
                      constraints: BoxConstraints.tight(Size(80, 40)),
                      color: Colors.red,
                    ),
                    Container(
                      constraints: BoxConstraints.tight(Size(60, 40)),
                      color: Colors.lightGreenAccent,
                    ),
                  ],
                ),
                new Divider(),
                Container(
                  child: Text(
                    'mainAxisSize : 表示主轴应该占用多大的空间',
                    style: TextStyle(fontSize: 18),
                  ),
                  padding: EdgeInsets.only(top: 5,bottom: 5),
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints.tight(Size(40, 40)),
                      color: Colors.amberAccent,
                    ),
                    Container(
                      constraints: BoxConstraints.tight(Size(40, 60)),
                      color: Colors.green,
                    ),
                    Container(
                      constraints: BoxConstraints.tight(Size(40, 40)),
                      color: Colors.lightBlue,
                    ),
                  ],
                ),
                new Divider(),

                Container(
                  child: Text(
                    'crossAxisAlignment ：表示 子Widget 在交叉轴的对齐方式',
                    style: TextStyle(fontSize: 18),
                  ),
                  padding: EdgeInsets.only(top: 5,bottom: 5),
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        constraints: BoxConstraints.tightFor(),
                        color: Colors.amberAccent,
                        child: Text('测试内容1'),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints.tight(Size(120, 80)),
                      color: Colors.green,
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child:Container(
                        constraints: BoxConstraints.tightFor(),
                        color: Colors.lightBlue,
                        child: Text('测试内容2'),
                      ),
                    ),
                  ],
                ),
                new Divider(),
              ],
            )
        )
    );
  }
}
