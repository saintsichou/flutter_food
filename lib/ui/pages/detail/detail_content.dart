import 'package:deliciousfood/core/fitscreen/int_screen.dart';
import 'package:flutter/material.dart';

class DetailContent extends StatelessWidget {
  final meal;

  DetailContent(this.meal);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          banner(),
          makeTitle(context, '准备材料'),
          makings(context),
          makeTitle(context, '制作步骤'),
          steps(context)
        ],
      ),
    );
  }

  Widget banner() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8.px),
      child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(meal.imageUrl),
            ),
      
    );
  }

  Widget makings(BuildContext ctx) {
    return Container(
      padding: EdgeInsets.all(8.px),
      width: MediaQuery.of(ctx).size.width - 20.px,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(6)),
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        physics: NeverScrollableScrollPhysics(),
        itemCount: meal.ingredients.length,
        itemBuilder: (ctx, index) {
          return Card(
              color: Colors.blue[50],
              child: Padding(
                padding: EdgeInsets.all(8.px),
                child: Text(meal.ingredients[index]),
              ));
        },
      ),
    );
  }

  Widget steps(ctx) {
    return Container(
      padding: EdgeInsets.all(8.px),
      width: MediaQuery.of(ctx).size.width - 20.px,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(6)),
      child: ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.all(0),
          physics: NeverScrollableScrollPhysics(),
          itemCount: meal.steps.length,
          itemBuilder: (ctx, index) {
            return ListTile(
              leading: CircleAvatar(child: Text('${index + 1}'),),
              title: Text(meal.steps[index]),
            );
          },
          separatorBuilder: (ctx, index) {
            return Divider();
          }),
    );
  }

  Widget makeTitle(BuildContext ctx, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.px),
      child: Text(title,
          style: Theme.of(ctx)
              .textTheme
              .display1
              .copyWith(fontWeight: FontWeight.bold)),
    );
  }
}
