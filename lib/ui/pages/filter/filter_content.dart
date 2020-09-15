import 'package:deliciousfood/core/provider/isSwitch_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:deliciousfood/core/fitscreen/int_screen.dart';
import 'package:provider/provider.dart';

class FliterContent extends StatelessWidget {
  const FliterContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[MyTitle(context), MyFil()],
    );
  }

  Widget MyTitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.px),
      alignment: Alignment.center,
      child: Text(
        '展示你的选择',
        style: Theme.of(context)
            .textTheme
            .display2
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget MyFil() {
    return Expanded(
      child: Consumer<IsSwitchViewModel>(builder: (ctx, vm, child) {
        return ListView(
          // shrinkWrap: true,
          children: <Widget>[
            MyList('无谷蛋白', '无谷蛋白', vm.isGu, (value) {
              vm.isGu = value;
              print(111);
            }),
            MyList('不含乳糖', '不含乳糖', vm.isRu, (value) {
              vm.isRu = value;
            }),
            MyList('素食主义', '素食主义', vm.isSu, (value) {
              vm.isSu = value;
            }),
            MyList('严格素食主义', '严格素食主义', vm.isVegan, (value) {
              vm.isVegan = value;
            }),
          ],
        );
      }),
    );
  }

  Widget MyList(String title, String subtitle, bool value, Function onChanged) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Switch(value: value, onChanged: onChanged),
    );
  }
}
