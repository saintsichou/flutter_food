import 'package:deliciousfood/core/http/home/home_api.dart';
import 'package:deliciousfood/core/model/categroy.dart';
import 'package:deliciousfood/ui/pages/meal/index.dart';
import 'package:deliciousfood/ui/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:deliciousfood/core/fitscreen/int_screen.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Category>>(
        future: HomeApi.getCatList(),
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final cats = snapshot.data;
          return Center(
              child: GridView.builder(
                  padding: EdgeInsets.all(10.px),
                  itemCount: cats.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.px,
                      crossAxisSpacing: 20.px,
                      childAspectRatio: 16 / 9),
                  itemBuilder: (BuildContext ctx, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(MyMealPage.routerName, arguments: cats[index]); 
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: createMaterialColor(Color(0xFF073b4c)))),
                        alignment: Alignment.center,
                        child: Text(cats[index].title),
                      ),
                    );
                  }));
        });
  }
}
