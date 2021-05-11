import 'package:flutter/material.dart';
import 'package:flutter_search/core/data/search_data.dart';

import '../../../core/extension/int_fit.dart';
import '../../../ui/widgets/search_widget.dart';

//根据传过来的类别，具体的去搜索
class WZDetailSearchFromCategoryPage extends StatelessWidget {
  static const routeName = "detail_search";

  const WZDetailSearchFromCategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SearchData _searchData =
        ModalRoute.of(context).settings.arguments as SearchData;
    return Material(child: SafeArea(child: _contentWidget(_searchData)));
  }
}

Widget _contentWidget(SearchData _searchData) => Container(
      child: Column(
        children: [
          _searchWidget(),
          _titleWidget(_searchData),
          _listData(),
        ],
      ),
    );

Widget _searchWidget() => WZSearchWidget(
      valueChanged: (value) {
        print(value);
      },
    );

Widget _titleWidget(SearchData _searchData) => Container(
      height: 25.px,
      color: Colors.grey.withOpacity(0.3),
      padding: EdgeInsets.only(left: 10.px),
      alignment: Alignment.centerLeft,
      child: Text(_searchData.name),
    );

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

Widget _listData() {
  return Expanded(
    child: ListView.separated(
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: CircleAvatar(
                backgroundImage: NetworkImage(_users[index].icon),
              ),
              title: Text(_users[index].name),
              subtitle: Text(_users[index].phone),
              trailing: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent)),
                child: Text(
                  "相互关注",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
        separatorBuilder: (context, index) => Divider(
              height: 1.px,
            ),
        itemCount: _users.length),
  );
}
