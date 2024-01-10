import 'package:flutter/material.dart';
import 'package:flutter_chapter_8/models/meal.dart';

class MealDetails extends StatelessWidget {
  MealDetails({Key? key, required this.meal}) : super(key: key);
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Image.network(
        meal.imageUrl,
        width: double.infinity,
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }
}
