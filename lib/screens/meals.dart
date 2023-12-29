import 'package:flutter/material.dart';
import 'package:flutter_chapter_8/models/meal.dart';
import 'package:flutter_chapter_8/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({Key? key, required this.title, required this.meals})
      : super(key: key);
  final String title;
  final List<Meal> meals;
  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Không có gì ở đây.....",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 40,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Hãy thử chọn một danh mục khác....",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );
    if (meals.isNotEmpty) {
      content = ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) => MealsItem(meal: meals[index])
          // Text(
          //   meals[index].title,
          //   // style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          //   //       color: Theme.of(context).colorScheme.onBackground,
          //   //     ),
          // ),
          );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: content,
    );
  }
}
