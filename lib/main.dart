import 'package:flutter/material.dart';
import 'package:food_tracker_flutter/Screens/tabs.dart';

final kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 248, 207, 2),
);

final kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 248, 207, 2),
  brightness: Brightness.dark,
);

final kTheme = ThemeData(
  colorScheme: kColorScheme,
);

final kDarkTheme = ThemeData(
  colorScheme: kDarkColorScheme.copyWith(
  ),
);

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodTracker',
      theme: kTheme,
      darkTheme: kDarkTheme,
      home: const Scaffold(
        body: TabsScreen(),
      ),
    );
  }
}
