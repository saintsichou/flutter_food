import 'package:deliciousfood/core/provider/meal_viewmodel.dart';
import 'package:deliciousfood/core/router/index.dart';
import 'package:deliciousfood/ui/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/fitscreen/index.dart';
import 'core/provider/faver_viewmodel.dart';

void main(List<String> args) {

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (ctx)=>MealViewModel(),),
      ChangeNotifierProvider(create: (ctx)=>FaverProvider(),),
    ],
    child: MyApp()
    )
    
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    MyBoxFit.initatal();
    return MaterialApp(
        title: '寻味美食',
        theme: MyTheme.lightTheme,
        initialRoute: MyRouter.initalRoute,
        routes: MyRouter.routes,
        onGenerateRoute: MyRouter.onGenerateRoute,
        onUnknownRoute: MyRouter.onUnknownRoute);
  }
}
