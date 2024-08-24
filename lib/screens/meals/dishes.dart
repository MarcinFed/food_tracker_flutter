import 'package:flutter/material.dart';
import 'package:food_tracker_flutter/models/category.dart';
import 'package:food_tracker_flutter/data/meals.dart';
import 'package:food_tracker_flutter/data/categories.dart';
import 'package:food_tracker_flutter/models/meal.dart';
import 'package:food_tracker_flutter/widgets/meal_grid_item.dart';
import 'package:transparent_image/transparent_image.dart';

class DishesScreen extends StatelessWidget {
  DishesScreen({
    super.key,
    this.categoryId,
    required this.meals,
  });

  final CategoryId? categoryId;
  final List<Meal> meals;
  Category? category;

  @override
  Widget build(BuildContext context) {
    if (categoryId != null) {
      category = categories.firstWhere((cat) => cat.id == categoryId);
    }

    Widget content = const Center(
      child: Text('Dishes'),
    );

    if (categoryId != null) {
      content = Scaffold(
        appBar: AppBar(
          title: Text(category!.title),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Hero(
                    tag: category!.id,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage(
                        placeholder: MemoryImage(kTransparentImage),
                        image: NetworkImage(
                          category!.imageUrl,
                        ),
                        fit: BoxFit.cover,
                        height: 100,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    textAlign: TextAlign.center,
                    category!.description,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: meals.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  mainAxisExtent: 120,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return MealGridItem(meal: meals[index]);
                },
              ),
            ),
          ],
        ),
      );
    }

    return LayoutBuilder(builder: (ctx, constraints) {
      final width = constraints.maxWidth;
      final height = constraints.maxHeight;

      if (width > height) {
        return Scaffold(
          appBar: AppBar(
            title: Text(category!.title),
          ),
          body: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Hero(
                        tag: category!.id,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FadeInImage(
                            placeholder: MemoryImage(kTransparentImage),
                            image: NetworkImage(
                              category!.imageUrl,
                            ),
                            fit: BoxFit.cover,
                            height: height * 0.5,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        textAlign: TextAlign.center,
                        category!.description,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: meals.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    mainAxisExtent: 120,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    return MealGridItem(meal: meals[index]);
                  },
                ),
              ),
            ],
          ),
        );
      }
      return content;
    });
  }
}
