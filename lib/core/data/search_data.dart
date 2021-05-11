import 'package:flutter/material.dart';

class WZSearchData {
  static List<SearchData> datas = [
    SearchData(Icon(Icons.people), "我关注的"),
    SearchData(Icon(Icons.pets), "关注我的"),
    SearchData(Icon(Icons.school), "学校"),
    SearchData(Icon(Icons.class_), "班级"),
    SearchData(Icon(Icons.wallpaper), "资讯"),
  ];
}

class SearchData {
  final Icon icon;
  final String name;

  SearchData(this.icon, this.name);
}
