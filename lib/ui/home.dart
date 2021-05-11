import 'package:flutter/material.dart';

import '../ui/app/home/home_content.dart';

class WZHomePage extends StatelessWidget {
  static const routeName = "/";

  const WZHomePage({Key key}) : super(key: key);

  build(context) => Material(child: WZBodyContent());
}
