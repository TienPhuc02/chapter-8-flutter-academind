import "package:flutter/material.dart";
import "package:flutter_chapter_8/data/dummy_data.dart";
import "package:flutter_chapter_8/models/meal.dart";
import "package:flutter_chapter_8/screens/categories.dart";
import "package:flutter_chapter_8/screens/filters.dart";
import "package:flutter_chapter_8/screens/meals.dart";
import "package:flutter_chapter_8/widgets/main_drawer.dart";

const kInitialFilters = {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.veganFree: false,
  Filter.vegetarianFree: false
};

class tabsScreen extends StatefulWidget {
  const tabsScreen({super.key});

  @override
  State<tabsScreen> createState() => _tabsScreen();
}

class _tabsScreen extends State<tabsScreen> {
  int _selectedPageIndex = 0;
  final List<Meal> _favoriteMeals = [];
  Map<Filter, bool> _selectFilter = {
    Filter.glutenFree: false,
    Filter.lactoseFree: false,
    Filter.veganFree: false,
    Filter.vegetarianFree: false
  };
  void _showInfoMessage(String mess) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(mess)));
  }

  void _toggleMealFavoriteStatus(Meal meal) {
    final isExisting = _favoriteMeals.contains(meal);
    if (isExisting == true) {
      setState(() {
        _favoriteMeals.remove(meal);
      });
      _showInfoMessage("Bữa ăn không còn là món yêu thích");
    } else {
      setState(() {
        _favoriteMeals.add(meal);
      });
      _showInfoMessage("Đã được đánh dấu là yêu thích");
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == "tìm kiếm") {
      final results = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) => FiltersScreen(
            currentFilters: _selectFilter,
          ),
        ),
      );
      setState(() {
        _selectFilter = results ?? kInitialFilters;
      });
      print(results);
    }
  }

  @override
  Widget build(BuildContext context) {
    final availableMeals = dummyMeals.where((meal) {
      if (_selectFilter[Filter.glutenFree]! && !meal.isGlutenFree) {
        return false;
      }
      if (_selectFilter[Filter.lactoseFree]! && !meal.isLactoseFree) {
        return false;
      }
      if (_selectFilter[Filter.veganFree]! && !meal.isVegan) {
        return false;
      }
      if (_selectFilter[Filter.vegetarianFree]! && !meal.isVegetarian) {
        return false;
      }
      return true;
    }).toList();
    Widget activePage = CategoriesScreen(
      onToggleFavorite: _toggleMealFavoriteStatus,
      availableMeals: availableMeals,
    );
    var activePageTitle = "Thể loại";
    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
        meals: _favoriteMeals,
        onToggleFavorite: _toggleMealFavoriteStatus,
      );
      activePageTitle = "Cái bạn thích nhất";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: "Thể loại"),
          BottomNavigationBarItem(
              icon: Icon(Icons.star), label: "Cái bạn thích nhất"),
        ],
      ),
    );
  }
}
