import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = './meal-detail-screen';

  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('$routeArg'),
      ),
      body: Center(child: Text('Meal ID: $routeArg')),
    );
  }
}
