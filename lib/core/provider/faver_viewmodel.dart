import 'package:deliciousfood/core/model/meal.dart';
import 'package:flutter/material.dart';

class FaverProvider extends ChangeNotifier {
  List<Meal> _meals = [];

  List<Meal> get meals {
    return _meals;
  }

  void addMeal(Meal meal) {
    _meals.add(meal);
    notifyListeners();
  }

  void removeMeal(Meal meal) {
    _meals.remove(meal);
    notifyListeners();
  }
  void handleMeal(Meal meal){
    if (isFaver(meal)) {
      removeMeal(meal);
    } else {
      addMeal(meal);
    }
  }
  bool isFaver(Meal meal) {
    return _meals.contains(meal);
  }
}
