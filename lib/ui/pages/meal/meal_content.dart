import 'package:deliciousfood/core/model/categroy.dart';
import 'package:deliciousfood/core/model/meal.dart';
import 'package:deliciousfood/core/provider/meal_viewmodel.dart';
import 'package:deliciousfood/ui/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

class MealContent extends StatelessWidget {
  const MealContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cats = ModalRoute.of(context).settings.arguments as Category;

    return Selector<MealViewModel , List<Meal>>(
      builder: (ctx, meals, child) {
        return ListView.builder(
          itemBuilder: (BuildContext ctx, int index) {
            return MyMealItem(meals[index]);
          },
          itemCount: meals.length,
        );
      },
      selector: (ctx, mealVm) => mealVm.meals
          .where((meal) => meal.categories.contains(_cats.id))
          .toList(),
      shouldRebuild: (prev, next) => !ListEquality().equals(prev, next),
    );
  }
}
// class MealContent extends StatelessWidget {
//   const MealContent({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final _cats = ModalRoute.of(context).settings.arguments as Category;

//     return Consumer<MealViewModel>(
//       builder: (ctx, mealVm, child) {
//         final meals =
//             mealVm.meals.where((meal) => meal.categories.contains(_cats.id));
//         return Text('${mealVm.meals}');
//       },
//     );
//   }
// }
