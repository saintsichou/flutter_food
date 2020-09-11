import 'package:flutter/material.dart';

import 'home_content.dart';
import 'home_drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('寻味中国'),
      ),
      body: HomeContent(),
      drawer: MyDrawer()
    );
  }
}
