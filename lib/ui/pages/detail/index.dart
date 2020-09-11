import 'package:deliciousfood/core/model/meal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:deliciousfood/core/provider/faver_viewmodel.dart';
import 'detail_content.dart';

class MyDetail extends StatelessWidget {
  static final String routerName = '/detail';
  @override
  Widget build(BuildContext context) {
    final _meal = ModalRoute.of(context).settings.arguments as Meal;
    return Scaffold(
        appBar: AppBar(title: Text(_meal.title)),
        body: DetailContent(_meal),
        floatingActionButton: Consumer<FaverProvider>(
            builder: (BuildContext ctx, faverVm, child) {
          final flag = faverVm.isFaver(_meal);
          final icon = flag
              ? Icon(Icons.favorite, color: Colors.red)
              : Icon(Icons.favorite_border);

          return FloatingActionButton(
              onPressed: () {
                faverVm.handleMeal(_meal);
              },
              child: icon,
              backgroundColor: Colors.black54);
        }));
  }
}
