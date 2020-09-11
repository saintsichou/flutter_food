import 'package:deliciousfood/core/provider/faver_viewmodel.dart';
import 'package:deliciousfood/ui/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyFavePage extends StatefulWidget {
  MyFavePage({Key key}) : super(key: key);

  @override
  _MyFavePageState createState() => _MyFavePageState();
}

class _MyFavePageState extends State<MyFavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的收藏'),
      ),
      body: Consumer<FaverProvider>(builder: (ctx, faverVm, child) {
        print(faverVm.meals.length);
        if(faverVm.meals.length == 0){
          return Center(child: Text('这城市那么空～',style: TextStyle(fontSize: 20),));
        }
        return ListView.builder(
          itemBuilder: (BuildContext ctx, int index) {
            return MyMealItem(faverVm.meals[index]);
          },
          itemCount: faverVm.meals.length,
        );
      }),
    );
  }
}
