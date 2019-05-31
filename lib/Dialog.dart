import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ShowAboutDialogWidget());

class ShowAboutDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter UI Widget -- 对话框")),
        body: Builder(
          builder: (context) {
            return Row(children: <Widget>[
              RaisedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                            title: Text('SimpleDialog Demo'),
                            titlePadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            // 标题的边距
                            contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            // 对话框的边距
                            backgroundColor: Colors.lightBlueAccent,
                            // 对话框的背景颜色
                            elevation: 1,
                            // z-index
                            // 定义边框形状
                            shape: BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(5, 5)),
                                side: BorderSide(
                                    color: Colors.deepOrange,
                                    style: BorderStyle.solid,
                                    width: 1)),
                            children: <Widget>[
                              SimpleDialogOption(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              SimpleDialogOption(
                                child: Text('CANCEL'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ));
                },
                child: Text('showDialog'),
              ),
              RaisedButton(
                  child: Text('Alert Dialog'),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('alertDialog测试'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text('一个列表内内容！！！1'),
                                  Text('一个列表内内容！！！2'),
                                  Text('一个列表内内容！！！3'),
                                  Text('一个列表内内容！！！4'),
                                  Text('一个列表内内容！！！5'),
                                  Text('一个列表内内容！！！6'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    '取消',
                                    style: TextStyle(),
                                  )),
                              RaisedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    '确认',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ],
                          ),
                    );
                  }),
              RaisedButton(
                child: Text('CupertinoAlert'),
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (content) => CupertinoAlertDialog(
                      title: Text('标题'),
                      content: Text('内容'),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          child: Text('Ok'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            ]);
          },
        ),
      ),
    );
  }
}
