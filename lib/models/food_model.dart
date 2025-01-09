class FoodModel {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory foodCategory;
  List<AddonModel> availableAddons;

  FoodModel({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.foodCategory,
    required this.availableAddons,
  });
}

enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

class AddonModel {
  String name;
  double price;

  AddonModel({
    required this.name,
    required this.price,
  });
}
