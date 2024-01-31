import 'package:flutter/material.dart';
import 'package:flutter_chapter_8/data/dummy_data.dart';
import 'package:flutter_chapter_8/screens/categories.dart';
import 'package:flutter_chapter_8/screens/meals.dart';
import 'package:flutter_chapter_8/screens/tabs.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const TabsScreen(),
    );
  }
}
