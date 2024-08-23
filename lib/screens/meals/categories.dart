import 'package:flutter/material.dart';
import 'package:food_tracker_flutter/data/categories.dart';
import 'package:food_tracker_flutter/screens/meals/dishes.dart';
import '../../widgets/category_grid_item.dart';
import 'package:food_tracker_flutter/models/category.dart';
import 'package:food_tracker_flutter/models/meal.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: categories.length,
      itemBuilder: (ctx, index) {
        return CategoryGridItem(
          category: categories[index],
        );
      },
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400,
        mainAxisExtent: 120,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
    );
  }
}
