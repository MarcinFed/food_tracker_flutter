import 'package:flutter/material.dart';
import 'package:food_tracker_flutter/Screens/calendar.dart';
import 'package:food_tracker_flutter/Screens/shopping_list.dart';

import 'Meals/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const MealsScreen();

    if(_selectedPageIndex ==0 ) {
      activePage = const MealsScreen();
    } else if (_selectedPageIndex == 1) {
      activePage = const ShoppingListScreen();
    } else if (_selectedPageIndex == 2) {
      activePage = const CalendarScreen();
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist),
            label: 'Shopping List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
        ],
      ),
      body: activePage,
    );
  }
}
