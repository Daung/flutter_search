import 'package:flutter/material.dart';
import 'package:flutter_search/ui/common_search.dart';

import '../core/extension/int_fit.dart';

class WZMineFocusPage extends StatelessWidget {
  static const routeName = "/mine_focus";

  const WZMineFocusPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            WZSearchWidget(),
            _makeTitleWidget(),
            _makeList(),
          ],
        ),
      ),
    );
  }
}

Widget _makeTitleWidget() {
  return Container(
    width: double.infinity,
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.only(left: 5.px),
    height: 25.px,
    color: Colors.grey.withOpacity(0.1),
    child: Text("关注我的", style: TextStyle(fontWeight: FontWeight.bold),),
  );
}

class UserInfo {
  final String icon;
  final String name;
  final String phone;
  final int type;

  UserInfo(this.icon, this.name, this.phone, this.type);
}

List<UserInfo> _users = [
  UserInfo(
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.17qq.com%2Fimg_qqtouxiang%2F87478141.jpeg&refer=http%3A%2F%2Fwww.17qq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623050048&t=9258e9895ae92bc5fc6cae7414b8c6a9",
      "张三",
      "17892764097",
      0),
  UserInfo(
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.17qq.com%2Fimg_qqtouxiang%2F12793447.jpeg&refer=http%3A%2F%2Fwww.17qq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623050048&t=0b7e588384c33ef75b317f448dcf68d6",
      "里斯",
      "17892764097",
      0),
  UserInfo(
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.17qq.com%2Fimg_qqtouxiang%2F87694782.jpeg&refer=http%3A%2F%2Fwww.17qq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623050048&t=3857a7d889d4896f09c49bcb43ecb9d0",
      "王武",
      "17892764097",
      1),
  UserInfo(
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201802%2F11%2F20180211201400_tkcpr.jpg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623050048&t=82ca8d664a81c750860e9b09bfd54a95",
      "找刘",
      "17892764097",
      1),
  UserInfo(
      "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2319445812,2250331397&fm=26&gp=0.jpg",
      "张三",
      "17892764097",
      1),
  UserInfo(
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201509%2F17%2F20150917190203_wtvs5.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623050048&t=37bcba21e5a1248aa446b4afd3bdd947",
      "张三",
      "17892764097",
      1),
];

Widget _makeList() {
  return Expanded(
    child: ListView.separated(
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: CircleAvatar(
                child: ClipRRect(child: Image.network(_users[index].icon, fit: BoxFit.cover,), borderRadius: BorderRadius.circular(15.px)),
              ),
              title: Text(_users[index].name),
              subtitle: Text(_users[index].phone),
              trailing: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent)),
                child: Text("相互关注", style: TextStyle(color: Colors.white),),
              ),
            ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: _users.length),
  );
}
