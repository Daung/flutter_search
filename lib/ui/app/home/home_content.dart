import 'package:flutter/material.dart';
import 'package:flutter_search/core/data/search_data.dart';
import 'package:flutter_search/ui/app/home/search_detail.dart';

import '../../../core/extension/int_fit.dart';
import '../../../ui/widgets/search_widget.dart';

//首页要显示的内容
class WZBodyContent extends StatelessWidget {
  const WZBodyContent({Key key}) : super(key: key);

  build(context) => SafeArea(
        child: _contentWidget(),
      );
}

Widget _contentWidget() => Container(
      child: Column(
        children: [
          _searchWidget(),
          _listWidget(),
        ],
      ),
    );

Widget _searchWidget() => WZSearchWidget(
      valueChanged: (value) {
        print(value);
      },
    );

Widget _listWidget() => Container(child: Expanded(child: _detailListView()));

Widget _detailListView() => Container(
      color: Colors.white,
      child: ListView.separated(
          itemCount: WZSearchData.datas.length,
          separatorBuilder: (context, index) => Divider(
                height: 1.px,
                indent: 50.px,
              ),
          itemBuilder: (context, index) {
            final _searchData = WZSearchData.datas[index];
            return ListTile(
              onTap: () {
                Navigator.pushNamed(
                    context, WZDetailSearchFromCategoryPage.routeName,
                    arguments: _searchData);
              },
              leading: _searchData.icon,
              title: Text(_searchData.name),
            );
          }),
    );
