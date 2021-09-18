import 'package:flutter/material.dart';
import 'package:recipes_app/screens/category_screen_meals.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
            child: Text(title, style: Theme.of(context).textTheme.bodyText1)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          // borderRadius: BorderRadius.circular(15)
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            )
          ],
        ),
      ),
    );
  }
}
