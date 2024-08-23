import 'package:flutter/material.dart';
import 'package:food_tracker_flutter/screens/meals/categories.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const TabBar(
            tabs: [
              Tab(
                text: 'Categories',
              ),
              Tab(
                text: 'Dishes',
              ),
              Tab(
                text: 'Favourites',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: const [
            Center(
               child: CategoriesScreen(),
            ),
             Center(
              child: Text('Dishes'),
            ),
             Center(
              child: Text('Favorites'),
            ),
          ],
        ),
      ),
    );
  }
}
