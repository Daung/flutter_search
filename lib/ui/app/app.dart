import 'package:flutter/material.dart';
import 'package:flutter_search/ui/theme/theme.dart';

import '../../core/size/size.dart';
import '../route/route.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WZDeviceInfo.iniDeviceInfo();
    return MaterialApp(
      title: 'Search module',
      theme: WZTheme.theme,
      initialRoute: WZRoute.initialRoute,
      routes: WZRoute.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   static const routeName = "/";
//
//   const MyHomePage({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: WZBodyContent(),
//     );
//   }
// }
//
// class WZBodyContent extends StatelessWidget {
//   const WZBodyContent({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         child: Column(
//           children: [
//             WZSearchWidget(),
//             Divider(height: 1.px),
//             WZSearchDataWidget(),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class WZSearchDataWidget extends StatelessWidget {
//   const WZSearchDataWidget({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final items = WZSearchData.initData;
//     return Expanded(
//       child: Container(
//         child: ListView.separated(
//             itemBuilder: (context, index) {
//               return ListTile(
//                 onTap: () {
//                   switch (index) {
//                     case 0:
//                       Navigator.pushNamed(context, WZMineFocusPage.routeName);
//                       break;
//                     case 1:
//                       break;
//                     default:
//                       break;
//                   }
//                 },
//                 leading: items.keys.toList()[index],
//                 title: Text(items.values.toList()[index]),
//               );
//             },
//             separatorBuilder: (context, index) => Divider(
//                   height: 1.px,
//                 ),
//             itemCount: WZSearchData.initData.length),
//       ),
//     );
//   }
// }
