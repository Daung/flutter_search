import 'package:flutter/material.dart';

import '../../ui/app/home/search_detail.dart';
import '../../ui/home.dart';

class WZRoute {
  static const String initialRoute = WZHomePage.routeName;
  static final Map<String, WidgetBuilder> routes = {
    initialRoute: (context) => WZHomePage(),
    WZDetailSearchFromCategoryPage.routeName: (context) =>
        WZDetailSearchFromCategoryPage(),
  };
}
