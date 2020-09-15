import 'package:deliciousfood/ui/pages/filter/index.dart';
import 'package:flutter/material.dart';
import 'package:deliciousfood/core/fitscreen/int_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 250.px,
        child: Drawer(
          child: Column(
            children: <Widget>[
              Header(context),
              MyTile(Icon(Icons.settings), '设置过滤', () {
                // Navigator.of(context).pop();
                Navigator.of(context).pushNamed(MyFilter.routerName);
              }),
              MyTile(Icon(Icons.restaurant), '进餐', () {
                Navigator.of(context).pop();
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget Header(ctx) {
    return Container(
      width: double.infinity,
      height: 100.px,
      color: Colors.blue[100],
      alignment: Alignment(0, 0.5),
      child: Text(
        '开始动手',
        style: Theme.of(ctx)
            .textTheme
            .display3
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget MyTile(Widget icon, String title, Function handle) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: handle,
    );
  }
}
