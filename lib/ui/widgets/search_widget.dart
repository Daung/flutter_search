import 'package:flutter/material.dart';

import '../../core/extension/int_fit.dart';

final FocusNode _searchFocusNode = FocusNode();

//搜索框 的简单封装
class WZSearchWidget extends StatelessWidget {
  final ValueChanged valueChanged;

  WZSearchWidget({Key key, this.valueChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _contentWidget(context, valueChanged),
        _separateWidget(),
      ],
    );
  }
}

Widget _contentWidget(BuildContext context, ValueChanged valueChanged) =>
    Container(
      height: 27.px,
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 3.px),
      margin: EdgeInsets.only(top: 3.px),
      child: _rootChildWidget(context, valueChanged),
    );

Widget _separateWidget() => Divider(
      height: 2.px,
    );

Widget _rootChildWidget(BuildContext context, ValueChanged valueChanged) {
  return Row(
    children: [
      _inputWidget(valueChanged),
      _cancelWidget(context),
    ],
  );
}

//左边的输入框
Widget _inputWidget(ValueChanged valueChanged) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.only(left: 10.px),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(3.px),
      ),
      child: _inputContentWidget(valueChanged),
    ),
  );
}

Widget _inputContentWidget(ValueChanged valueChanged) {
  return Row(
    children: [
      _searchIconWidget(),
      _separateIconWidget(),
      _textFieldWidget(valueChanged),
    ],
  );
}

//放大镜
Widget _searchIconWidget() {
  return Container(
    child: Icon(
      Icons.search_sharp,
      color: Colors.grey.withOpacity(0.3),
    ),
    padding: EdgeInsets.all(2.px),
  );
}

//三分隔符
Widget _separateIconWidget() {
  return Container(
    child: Text("三"),
  );
}

//输入框
//文字垂直居中 InputDecoration=>OutlineInputBorder=>contentPadding 都设置为0
Widget _textFieldWidget(ValueChanged valueChanged) {
  return _SearchTextFieldWidget(valueChanged);
}

//右边的取消按钮
Widget _cancelWidget(BuildContext context) {
  return Container(
    width: 60.px,
    child: TextButton(
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
      onPressed: () {
        _searchFocusNode.unfocus();
      },
      child: Text("取消"),
    ),
  );
}

class _SearchTextFieldWidget extends StatefulWidget {
  final ValueChanged valueChanged;

  _SearchTextFieldWidget(this.valueChanged);

  @override
  _SearchTextFieldWidgetState createState() => _SearchTextFieldWidgetState();
}

class _SearchTextFieldWidgetState extends State<_SearchTextFieldWidget> {
  final _controller = TextEditingController();

  @override
  void initState() {
    _controller.addListener(() {
      String value = _controller.value.text;
      widget.valueChanged(value);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            child: TextField(
      controller: _controller,
      focusNode: _searchFocusNode,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide.none),
        contentPadding: EdgeInsets.only(left: 5.px),
      ),
    )));
  }
}
