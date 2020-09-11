import 'package:flutter/material.dart';
import 'package:deliciousfood/core/fitscreen/int_screen.dart';

class MealInfo extends StatelessWidget {
  final Widget _icon;
  final String _title;

  const MealInfo(this._icon, this._title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _icon,
        SizedBox(width: 10.px,),
        Text(_title)
      ],
    );
  }
}
