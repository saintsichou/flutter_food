import 'package:flutter/material.dart';
import 'home_content.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('寻味中国'),
          leading: IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              })),
      body: HomeContent(),
    );
  }
}
