import 'package:deliciousfood/core/http/home/home_api.dart';
import 'package:deliciousfood/core/model/meal.dart';
import 'package:flutter/material.dart';

class MealViewModel extends ChangeNotifier {
  List<Meal> _meals = [];

  List<Meal> get meals {
    return _meals;
  }

  MealViewModel() {
    HomeApi.getMealList().then((res) {
      _meals = res;
      notifyListeners();
    });
  }
}
