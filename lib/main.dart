import 'package:flutter/material.dart';
import 'package:recipes_app/screens/meal_detail_screen.dart';

import 'screens/categories_screen.dart';
import 'screens/category_screen_meals.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var colorPrimary = Color.fromRGBO(48, 107, 52, 1);
    // var colorSecondary = Color.fromRGBO(28, 82, 83, 1);
    return MaterialApp(
      title: 'PotluckMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          // ignore: deprecated_member_use
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 18,
                  color: Color.fromRGBO(10, 10, 10, 10)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: TextStyle(fontSize: 25, fontFamily: 'Raleway'))),
      routes: {
        '/': (context) => CategoriesScreen(),
        CategoryMealScreen.routeName: (context) => CategoryMealScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
    );
  }
}
