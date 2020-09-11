import 'package:deliciousfood/core/model/categroy.dart';
import 'package:deliciousfood/core/model/meal.dart';

import '../http_request.dart';

class HomeApi {
  static Future<List<Category>> getCatList() async {
    final url = 'category';
    final result = await HttpRequest.request(url);
    final res = result['category'];
    List<Category> cats = [];
    for (var item in res) {
      cats.add(Category.fromJson(item));
    }
    return cats;
  }

  static Future<List<Meal>> getMealList() async {
    final url = 'meal';
    final result = await HttpRequest.request(url);
    final res = result['meal'];
    List<Meal> meals = [];
    for (var item in res) {
      meals.add(Meal.fromJson(item));
    }
    return meals;
  }
}
