import "package:flutter/material.dart";
import "package:flutter_chapter_8/screens/categories.dart";
import "package:flutter_chapter_8/screens/meals.dart";

class tabsScreen extends StatefulWidget {
  const tabsScreen({super.key});

  @override
  State<tabsScreen> createState() => _tabsScreen();
}

class _tabsScreen extends State<tabsScreen> {
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const CategoriesScreen();
    var activePageTitle = "Categories";
    if (_selectedPageIndex == 1) {
      activePage = const MealsScreen(meals: []);
      activePageTitle = "Your Favorite";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.start), label: "Favorites"),
        ],
      ),
    );
  }
}
