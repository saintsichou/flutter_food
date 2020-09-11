import 'package:deliciousfood/core/model/categroy.dart';
import 'package:flutter/material.dart';

import 'meal_content.dart';

class MyMealPage extends StatelessWidget {
  const MyMealPage({Key key}) : super(key: key);
  static const String routerName = 'meal';
  @override
  Widget build(BuildContext context) {
    final _cats = ModalRoute.of(context).settings.arguments as Category;
    print(_cats);
    return Scaffold(
      appBar: AppBar(
        title: Text(_cats.title),
      ),
      body: MealContent(),
    );
  }
}
