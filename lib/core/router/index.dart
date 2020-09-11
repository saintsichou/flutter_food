import 'package:deliciousfood/ui/pages/detail/index.dart';
import 'package:deliciousfood/ui/pages/main/index.dart';
import 'package:deliciousfood/ui/pages/meal/index.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static final String initalRoute = MyMainPage.routerName;
  static final Map<String, WidgetBuilder> routes = {
    MyMainPage.routerName:(ctx)=>MyMainPage(),
    MyMealPage.routerName:(ctx)=>MyMealPage(),
    MyDetail.routerName:(ctx)=>MyDetail()
  };
  static final RouteFactory onGenerateRoute = (RouteSettings settings) {
    // 统一处理
    final String name = settings.name;
    final Function pageContentBuilder = routes[name];
    if (pageContentBuilder != null) {
      if (settings.arguments != null) {
        final Route route = MaterialPageRoute(
            builder: (context) =>
                pageContentBuilder(context, arguments: settings.arguments));
        return route;
      } else {
        final Route route = MaterialPageRoute(
            builder: (context) => pageContentBuilder(context));
        return route;
      }
    }
  };
  static final RouteFactory onUnknownRoute = (settings) {
    return MaterialPageRoute(builder: (ctx) {
      // return UnKnow();
    });
  };
}
