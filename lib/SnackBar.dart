import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SnackBarNoBuilerWidget());

class SnackBarNoBuilerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI基础Widget -- SnackBar")),
          body: SnackBarWidget()),
    );
  }
}

class SnackBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text('Show SnackBar'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('SnackBar22333'),
                duration: Duration(seconds: 3),
//                backgroundColor:Colors.green,
                action:SnackBarAction(
                    label: '点击按钮',
                    onPressed: (){
                  print("哈哈哈");
                }),
            ),
        );
      },
    );
  }
}