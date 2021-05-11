import 'package:flutter/material.dart';

import '../core/extension/int_fit.dart';

class WZSearchWidget extends StatefulWidget {
  const WZSearchWidget({Key key}) : super(key: key);

  @override
  _WZSearchWidgetState createState() => _WZSearchWidgetState();
}

class _WZSearchWidgetState extends State<WZSearchWidget> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print(_controller.value.text);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.all(5.px),
            padding: EdgeInsets.symmetric(horizontal: 5.px),
            height: 25.px,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(3.px),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey.withOpacity(0.5),
                ),
                Icon(
                  Icons.wrap_text_outlined,
                  color: Colors.grey.withOpacity(0.5),
                ),
                SizedBox(
                  width: 2.px,
                ),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        contentPadding: EdgeInsets.all(0)),
                  ),
                ),
              ],
            ),
          )),
          TextButton(
            onPressed: () {},
            child: Text("取消"),
          )
        ],
      ),
    );
  }
}
