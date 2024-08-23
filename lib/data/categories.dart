import 'package:food_tracker_flutter/models/category.dart';

final List<Category> categories = [
  const Category(
    title: "Pizza",
    description: "Italian dish with dough base, cheese, and toppings",
    imageUrl: "https://drive.google.com/uc?export=view&id=1hj9B9Z6TK7J0wzt9VhwDO9LzFJhkuj_Y",
    id: CategoryId.pizza,
  ),
  const Category(
    title: "Sushi",
    description: "Vinegar-flavored rice with fish, vegetables, or egg",
    imageUrl: "https://drive.google.com/uc?export=view&id=1vl7So_rJsGaND1EkP1MpCEMkXcAXHWIF",
    id: CategoryId.sushi,
  ),
  const Category(
    title: "Burger",
    description: "Meat patty in a bun, often with lettuce, tomato, and sauces",
    imageUrl: "https://drive.google.com/uc?export=view&id=1aIP4hpDaRUmfK0adZrQFnov-eynsv7Yt",
    id: CategoryId.burger,
  ),
  const Category(
    title: "Pasta",
    description:
        "Versatile noodles served with a range of sauces and toppings from meats to vegetables",
    imageUrl: "https://drive.google.com/uc?export=view&id=18884XeyrPmY8hg3Rz3zUbC926OScSaza",
    id: CategoryId.pasta,
  ),
  const Category(
    title: "Dumplings",
    description:
        "Small dough parcels filled with meat or vegetables, steamed, boiled, or fried",
    imageUrl: "https://drive.google.com/uc?export=view&id=1tqGPJPvD2AHzI1BkAUu8qqEVq457wof4",
    id: CategoryId.dumplings,
  ),
  const Category(
    title: "Sweet",
    description:
        "Delightful sweet treats from fluffy pancakes to rich waffles, often topped with syrup, fruits, and whipped cream",
    imageUrl: "https://drive.google.com/uc?export=view&id=1ML1xYznPBAzKM6i_Rh03VLaEf8dZzLDZ",
    id: CategoryId.sweet,
  ),
  const Category(
    title: "Salad",
    description:
        "Fresh, raw vegetables, often with a dressing, served as a side dish or main course",
    imageUrl: "https://drive.google.com/uc?export=view&id=1dxEZ0qVacJjUprL0nYP_vHe0SPziNzBY",
    id: CategoryId.salad,
  ),
  const Category(
    title: "Soup",
    description:
        "Hot or cold liquid food made by boiling meat, fish, or vegetables in stock or water",
    imageUrl: "https://drive.google.com/uc?export=view&id=1w2zb8-qm_Ak8ybUNR1YZOBogJM0PnZ2J",
    id: CategoryId.soup,
  ),
]..sort((a, b) => a.title.compareTo(b.title));
