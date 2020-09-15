import 'package:flutter/material.dart';

import 'filter_content.dart';

class MyFilter extends StatelessWidget {
  const MyFilter({Key key}) : super(key: key);
  static String routerName = '/filter';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('food'),
      ),
      body: FliterContent(),
    );
  }
}
