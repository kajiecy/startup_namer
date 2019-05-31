import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    final FocusNode _focusNode = FocusNode();
    final InputDecoration _inputDecoration = InputDecoration();
    // TODO: implement build
    return MaterialApp(
      title: 'first hello',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('first App bar'),
          ),
          body: Column(
            children: <Widget>[
              TextField(
                controller: _controller,
                // 用于控制TextField是否占有当前键盘的输入焦点
                focusNode: _focusNode,
                // 用于控制TextField的外观显示，如提示文本、背景颜色、边框等
                decoration: _inputDecoration,

                // --------------------------------------------
                //文本的对齐方式
                textAlign: TextAlign.center,
                //是否自动获得焦点
                autofocus: false,
                // 输入的内容以···替代
                obscureText: false,
                // 自动改正
                autocorrect: true,
                // 最大行
                maxLines: 1,
                // 允许输入最大长度
                maxLength: 1000,
                //输入验证
                inputFormatters: [],
                // 是否可用
                enabled: true,
                // 光标宽度
                cursorWidth: 5,
                // 光标圆角
                cursorRadius: Radius.circular(20),
                // 光标颜色
                cursorColor: Colors.cyan,
                // 键盘模式 ios上使用
                keyboardAppearance: Brightness.light,
                // 文本框滑动时的间距
                scrollPadding: EdgeInsets.all(100),
                // 设置确定当用户启动拖动时拖动正式开始的时间
                dragStartBehavior: DragStartBehavior.down,
                // 是否启用交互式选择 true：长按将会选中文字，并且弹出 cut/copy/paste 的菜单
                enableInteractiveSelection: true,
                // 输入框类型
                // keyboardType:TextInputType.text,
                // 回车键图标
                textInputAction: TextInputAction.search,
                // 大小写转化 characters 全部大写 none 全部小写
                textCapitalization: TextCapitalization.characters,
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 38.0
                ),
                // --------------------------------------------
                // 文本框内容变化钩子
                onChanged: (String value) {
                  print(value);
                },
                // 文本框输入完成钩子
                onEditingComplete: () {
                  print('文本框输入完成钩子');
                },
                onSubmitted: (String value) {
                  print('文本框输入完成钩子' + value);
                },
                onTap: () {
                  print('onTap');
                }
              )
            ],
          )),
    );
  }
}
