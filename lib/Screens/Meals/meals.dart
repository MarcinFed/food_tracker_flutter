import 'package:flutter/material.dart';

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
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Categories'),
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
