import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chapter_8/data/dummy_data.dart';
import 'package:flutter_chapter_8/screens/meals.dart';
import 'package:flutter_chapter_8/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);
  void _selectCategory(
    BuildContext context,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const MealsScreen(title: "Some Title", meals: []),
      ),
    ); 
    // Navigator.push(context,route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick Your Category"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        // children: availableCategories
        //     .map(
        //       (category) => CategoryGridItem(category: category),
        //     )
        //     .toList(),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(context);
              },
            )
        ],
      ),
    );
  }
}
