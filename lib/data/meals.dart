import 'package:food_tracker_flutter/models/meal.dart';
import 'package:food_tracker_flutter/models/category.dart';
import 'package:food_tracker_flutter/models/ingredient.dart';

final List<Meal> meals = [
  const Meal(
    id: 0,
    name: "Pizza Margherita",
    description: "Classic Italian pizza recipe with homemade dough and fresh ingredients.",
    categories: [CategoryId.italian, CategoryId.pizza],
    imageUrl: "https://drive.google.com/uc?export=view&id=1uu0fQ8Wi9-1gY_93O-D8MPMjkOXqvOzL",
    youtubeVideoId: "HCAPjIVOdJw",
    recipeSections: {
      "Dough Preparation": "1. Mix the flour, yeast, and salt in a bowl.\n2. Add warm water and mix until a dough forms.\n3. Knead the dough for 5-7 minutes until smooth.\n4. Let the dough rise in a warm place for 1 hour.",
      "Sauce Preparation": "1. Puree the tomatoes in a blender.\n2. Simmer the tomato puree in a saucepan over medium heat until thickened.\n3. Add salt and oregano to taste.",
      "Pizza Preparation": "1. Preheat the oven to 250°C (482°F).\n2. Roll out the dough on a floured surface.\n3. Spread the sauce over the dough.\n4. Add mozzarella cheese and pepperoni slices.\n5. Bake for 10-15 minutes until the crust is golden and the cheese is melted."
    },
    ingredients: [
      Ingredient(name: "Flour", amount: 500.0, unit: "g"),
      Ingredient(name: "Yeast", amount: 7.0, unit: "g"),
      Ingredient(name: "Salt", amount: 10.0, unit: "g"),
      Ingredient(name: "Water", amount: 300.0, unit: "ml"),
      Ingredient(name: "Tomatoes", amount: 400.0, unit: "g"),
      Ingredient(name: "Mozzarella", amount: 250.0, unit: "g"),
      Ingredient(name: "Pepperoni", amount: 100.0, unit: "g"),
    ],
  ),
  const Meal(
    id: 1,
    name: "Pepperoni Pizza",
    description: "Spicy pepperoni pizza with a crispy crust and lots of cheese.",
    categories: [CategoryId.italian, CategoryId.pizza],
    imageUrl: "https://drive.google.com/uc?export=view&id=10RUoQd4PIaKlrfLvNsCxuZbzc6smcHrG",
    youtubeVideoId: "HCAPjIVOdJw",
    recipeSections: {
      "Dough Preparation": "1. Mix the flour, yeast, and salt in a bowl.\n2. Add warm water and mix until a dough forms.\n3. Knead the dough for 5-7 minutes until smooth.\n4. Let the dough rise in a warm place for 1 hour.",
      "Sauce Preparation": "1. Puree the tomatoes in a blender.\n2. Simmer the tomato puree in a saucepan over medium heat until thickened.\n3. Add salt and oregano to taste.",
      "Pizza Preparation": "1. Preheat the oven to 250°C (482°F).\n2. Roll out the dough on a floured surface.\n3. Spread the sauce over the dough.\n4. Add mozzarella cheese and pepperoni slices.\n5. Bake for 10-15 minutes until the crust is golden and the cheese is melted."
    },
    ingredients: [
      Ingredient(name: "Flour", amount: 500.0, unit: "g"),
      Ingredient(name: "Yeast", amount: 7.0, unit: "g"),
      Ingredient(name: "Salt", amount: 10.0, unit: "g"),
      Ingredient(name: "Water", amount: 300.0, unit: "ml"),
      Ingredient(name: "Tomatoes", amount: 400.0, unit: "g"),
      Ingredient(name: "Mozzarella", amount: 250.0, unit: "g"),
      Ingredient(name: "Pepperoni", amount: 100.0, unit: "g"),
    ],
  ),
  const Meal(
    id: 2,
    name: "California Roll",
    description: "Popular sushi roll with crab, avocado, and cucumber.",
    categories: [CategoryId.japanese, CategoryId.sushi],
    imageUrl: "https://drive.google.com/uc?export=view&id=1kMXEv5AjmIh8n9zHZMAfB7PGwJVDA52J",
    youtubeVideoId: "84FqztDzWjE",
    recipeSections: {
      "Rice Preparation": "1. Rinse the sushi rice until the water runs clear.\n2. Cook the rice according to the package instructions.\n3. Mix the cooked rice with rice vinegar, sugar, and salt. Let it cool.",
      "Roll Preparation": "1. Lay a sheet of nori on a bamboo mat.\n2. Spread a thin layer of rice on the nori.\n3. Place crab meat, avocado slices, and cucumber strips on the rice.\n4. Roll the sushi tightly using the bamboo mat.\n5. Cut into bite-sized pieces."
    },
    ingredients: [
      Ingredient(name: "Sushi rice", amount: 300.0, unit: "g"),
      Ingredient(name: "Rice vinegar", amount: 30.0, unit: "ml"),
      Ingredient(name: "Sugar", amount: 10.0, unit: "g"),
      Ingredient(name: "Salt", amount: 5.0, unit: "g"),
      Ingredient(name: "Nori", amount: 4.0, unit: ""),
      Ingredient(name: "Crab meat", amount: 200.0, unit: "g"),
      Ingredient(name: "Avocado", amount: 1.0, unit: ""),
      Ingredient(name: "Cucumber", amount: 1.0, unit: ""),
    ],
  ),
];
