import 'package:deliciousfood/core/model/meal.dart';
import 'package:deliciousfood/core/provider/faver_viewmodel.dart';
import 'package:deliciousfood/ui/pages/detail/index.dart';
import 'package:flutter/material.dart';
import 'package:deliciousfood/core/fitscreen/int_screen.dart';
import 'package:provider/provider.dart';
import 'meal_list.dart';

class MyMealItem extends StatelessWidget {
  final Meal meal;

  const MyMealItem(this.meal);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(MyDetail.routerName, arguments: meal);
      },
      child: Card(
        margin: EdgeInsets.all(10.px),
        elevation: 5,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.px)),
        child: Column(
          children: <Widget>[buildImg(), buildInfo(context)],
        ),
      ),
    );
  }

  Widget buildImg() {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.px),
              topRight: Radius.circular(10.px)),
          child: Image.network(
            meal.imageUrl,
            width: double.infinity,
            height: 250.px,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10.px,
          bottom: 5.px,
          child: Container(
            width: 300.px,
            padding: EdgeInsets.symmetric(vertical: 5.px, horizontal: 10.px),
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(6.px)),
            child: Text(
              meal.title,
              style: TextStyle(fontSize: 22.px, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  Widget buildInfo(ctx) {
    return Padding(
      padding: EdgeInsets.all(16.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          MealInfo(Icon(Icons.schedule), '${meal.duration}分钟'),
          MealInfo(Icon(Icons.restaurant), getCom(meal.complexity)),
          faverInfo()
        ],
      ),
    );
  }

  String getCom(int level) {
    switch (level) {
      case 0:
        return '简单';
      case 1:
        return '一般';
      default:
        return '困难';
    }
  }

  Widget faverInfo() {
    return Consumer<FaverProvider>(builder: (ctx, faverVm, child) {
      final flag = faverVm.isFaver(meal);
      final icon = flag
          ? Icon(Icons.favorite, color: Colors.red)
          : Icon(Icons.favorite_border);
      return GestureDetector(
          onTap: () {
            faverVm.handleMeal(meal);
          },
          child: MealInfo(icon, !flag ? '未收藏' : '已收藏'));
    });
  }
}
