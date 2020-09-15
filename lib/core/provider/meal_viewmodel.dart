import 'package:deliciousfood/core/http/home/home_api.dart';
import 'package:deliciousfood/core/model/meal.dart';
import 'package:deliciousfood/core/provider/isSwitch_viewmodel.dart';
import 'package:flutter/material.dart';

class MealViewModel extends ChangeNotifier {
  List<Meal> _meals = [];
  IsSwitchViewModel _filterVm;

  List<Meal> get meals {
    return _meals.where((meal) {
      if (_filterVm.isGu && !meal.isGlutenFree) return false;
      if (_filterVm.isRu && !meal.isLactoseFree) return false;
      if (_filterVm.isSu && !meal.isVegetarian) return false;
      if (_filterVm.isVegan && !meal.isVegan) return false;
      return true;
    }).toList();
  }

  void updateFilter(IsSwitchViewModel filterVm) {
    _filterVm = filterVm;
  }

  MealViewModel() {
    HomeApi.getMealList().then((res) {
      _meals = res;
      notifyListeners();
    });
  }
}
