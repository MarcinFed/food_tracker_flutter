enum CategoryId {
  pizza,
  sushi,
  burger,
  pasta,
  dumplings,
  sweet,
  salad,
  soup,
  italian,
  japanese,
  american,
  polish,
}

class Category {
  const Category({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.id,
  });

  final String title;
  final String description;
  final String imageUrl;
  final CategoryId id;
}