import 'package:flutter/material.dart';
import 'package:flutter_chapter_8/models/meal.dart';
import 'package:flutter_chapter_8/screens/meal_details.dart';
import 'package:flutter_chapter_8/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen(
      {Key? key,
      this.title,
      required this.meals,
      required this.onToggleFavorite})
      : super(key: key);
  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) onToggleFavorite;
  void selectMeal(BuildContext context, Meal meal) {
    //context -> cung cấp thông tin về vị trí widget trong tree BuildContext giúp Flutter "biết" nơi để đặt UI mới của bạn trong cây widget.
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealDetails(
          meal: meal,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
    );
  }

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
          itemBuilder: (ctx, index) => MealsItem(
                meal: meals[index],
                onSelectMeal: (meal) {
                  selectMeal(context, meal);
                },
              ));
    }
    if (title == null) {
      return content;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title!,
        ),
      ),
      body: content,
    );
  }
}
