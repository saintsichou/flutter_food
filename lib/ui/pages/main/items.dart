import 'package:deliciousfood/ui/pages/faver/index.dart';
import 'package:deliciousfood/ui/pages/home/index.dart';
import 'package:flutter/material.dart';


final List<Widget> pages = [
  MyHomePage(),
  MyFavePage()
];

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('首页')),
  BottomNavigationBarItem(icon: Icon(Icons.star),title: Text('收藏')),
];
