// import 'package:flutter/material.dart';
// import 'package:flutter_chapter_8/screens/tabs.dart';
// import 'package:flutter_chapter_8/widgets/main_drawer.dart';

// enum Filter { glutenFree, lactoseFree, vegetarianFree, veganFree }

// class FiltersScreen extends StatefulWidget {
//   const FiltersScreen({super.key, required this.currentFilters});
//   final Map<Filter, bool> currentFilters;
//   @override
//   State<FiltersScreen> createState() => _FiltersScreenState();
// }

// class _FiltersScreenState extends State<FiltersScreen> {
//   var _glutenFreeFilterSet = false;
//   var _lactoseFreeFilterSet = false;
//   var _vegetarianFreeFilterSet = false;
//   var _veganFreeFilterSet = false;

//   @override
//   void initState() {
//     super.initState();
//     _glutenFreeFilterSet = widget.currentFilters[Filter.glutenFree]!;
//     _lactoseFreeFilterSet = widget.currentFilters[Filter.lactoseFree]!;
//     _veganFreeFilterSet = widget.currentFilters[Filter.veganFree]!;
//     _vegetarianFreeFilterSet = widget.currentFilters[Filter.vegetarianFree]!;
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Tìm kiếm của bạn!!"),
//       ),
//       body: PopScope(
//         canPop: false,
//         onPopInvoked: (bool didPop) {
//           if (didPop) return;
//           Navigator.of(context).pop({
//             Filter.glutenFree: _glutenFreeFilterSet,
//             Filter.lactoseFree: _lactoseFreeFilterSet,
//             Filter.vegetarianFree: _vegetarianFreeFilterSet,
//             Filter.veganFree: _veganFreeFilterSet,
//           });
//         },
//         child: Column(
//           children: [
//             SwitchListTile(
//               value: _glutenFreeFilterSet,
//               onChanged: (isChecked) {
//                 setState(() {
//                   _glutenFreeFilterSet = isChecked;
//                 });
//               },
//               title: Text(
//                 "Không chứa gluten",
//                 style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                     color: Theme.of(context).colorScheme.onBackground),
//               ),
//               subtitle: Text(
//                 "chỉ bao gồm các bữa ăn không chứa gluten",
//                 style: Theme.of(context).textTheme.labelMedium!.copyWith(
//                     color: Theme.of(context).colorScheme.onBackground),
//               ),
//               activeColor: Theme.of(context).colorScheme.tertiary,
//               contentPadding: const EdgeInsets.only(left: 34, right: 22),
//             ),
//             SwitchListTile(
//               value: _lactoseFreeFilterSet,
//               onChanged: (isChecked) {
//                 setState(() {
//                   _lactoseFreeFilterSet = isChecked;
//                 });
//               },
//               title: Text(
//                 "Không chứa lactose",
//                 style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                     color: Theme.of(context).colorScheme.onBackground),
//               ),
//               subtitle: Text(
//                 "chỉ bao gồm các bữa ăn không chứa lactose",
//                 style: Theme.of(context).textTheme.labelMedium!.copyWith(
//                     color: Theme.of(context).colorScheme.onBackground),
//               ),
//               activeColor: Theme.of(context).colorScheme.tertiary,
//               contentPadding: const EdgeInsets.only(left: 34, right: 22),
//             ),
//             SwitchListTile(
//               value: _vegetarianFreeFilterSet,
//               onChanged: (isChecked) {
//                 setState(() {
//                   _vegetarianFreeFilterSet = isChecked;
//                 });
//               },
//               title: Text(
//                 "Không chứa vegetarian",
//                 style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                     color: Theme.of(context).colorScheme.onBackground),
//               ),
//               subtitle: Text(
//                 "chỉ bao gồm các bữa ăn không chứa vegetarian",
//                 style: Theme.of(context).textTheme.labelMedium!.copyWith(
//                     color: Theme.of(context).colorScheme.onBackground),
//               ),
//               activeColor: Theme.of(context).colorScheme.tertiary,
//               contentPadding: const EdgeInsets.only(left: 34, right: 22),
//             ),
//             SwitchListTile(
//               value: _veganFreeFilterSet,
//               onChanged: (isChecked) {
//                 setState(() {
//                   _veganFreeFilterSet = isChecked;
//                 });
//               },
//               title: Text(
//                 "Không chứa vegan",
//                 style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                     color: Theme.of(context).colorScheme.onBackground),
//               ),
//               subtitle: Text(
//                 "chỉ bao gồm các bữa ăn không chứa vegan",
//                 style: Theme.of(context).textTheme.labelMedium!.copyWith(
//                     color: Theme.of(context).colorScheme.onBackground),
//               ),
//               activeColor: Theme.of(context).colorScheme.tertiary,
//               contentPadding: const EdgeInsets.only(left: 34, right: 22),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

// import 'package:meals/screens/tabs.dart';
// import 'package:meals/widgets/main_drawer.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key, required this.currentFilters});

  final Map<Filter, bool> currentFilters;

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;

  @override
  void initState() {
    super.initState();
    _glutenFreeFilterSet = widget.currentFilters[Filter.glutenFree]!;
    _lactoseFreeFilterSet = widget.currentFilters[Filter.lactoseFree]!;
    _vegetarianFilterSet = widget.currentFilters[Filter.vegetarian]!;
    _veganFilterSet = widget.currentFilters[Filter.vegan]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(
      //   onSelectScreen: (identifier) {
      //     Navigator.of(context).pop();
      //     if (identifier == 'meals') {
      //       Navigator.of(context).pushReplacement(
      //         MaterialPageRoute(
      //           builder: (ctx) => const TabsScreen(),
      //         ),
      //       );
      //     }
      //   },
      // ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop({
            Filter.glutenFree: _glutenFreeFilterSet,
            Filter.lactoseFree: _lactoseFreeFilterSet,
            Filter.vegetarian: _vegetarianFilterSet,
            Filter.vegan: _veganFilterSet,
          });
          return false;
        },
        child: Column(
          children: [
            SwitchListTile(
              value: _glutenFreeFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _glutenFreeFilterSet = isChecked;
                });
              },
              title: Text(
                'Gluten-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include gluten-free meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _lactoseFreeFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _lactoseFreeFilterSet = isChecked;
                });
              },
              title: Text(
                'Lactose-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include lactose-free meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _vegetarianFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _vegetarianFilterSet = isChecked;
                });
              },
              title: Text(
                'Vegetarian',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include vegetarian meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _veganFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _veganFilterSet = isChecked;
                });
              },
              title: Text(
                'Vegan',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include vegan meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
          ],
        ),
      ),
    );
  }
}
