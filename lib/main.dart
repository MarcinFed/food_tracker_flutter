import 'package:flutter/material.dart';
import 'package:food_tracker_flutter/Screens/tabs.dart';

final kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 2, 211, 248),
);

final kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 1, 64, 73),
  brightness: Brightness.dark,
);

final kTheme = ThemeData(
  colorScheme: kColorScheme,
);

final kDarkTheme = ThemeData(
  colorScheme: kDarkColorScheme,
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
