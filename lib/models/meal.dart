import 'package:food_tracker_flutter/models/category.dart';

import 'ingredient.dart';

class Meal {
  const Meal({
    required this.id,
    required this.name,
    required this.description,
    required this.categories,
    required this.imageUrl,
    required this.youtubeVideoId,
    required this.recipeSections,
    required this.ingredients,
  });

  final int id;
  final String name;
  final String description;
  final List<CategoryId> categories;
  final String imageUrl;
  final String youtubeVideoId;
  final Map<String, String> recipeSections;
  final List<Ingredient> ingredients;
}