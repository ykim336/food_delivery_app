import 'package:food_delivery_app/models/food_model.dart';

class CartItem {
  FoodModel food;
  List<AddonModel> selectedAddons;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quantity = 1,
  });

  double get totalPrice =>
      quantity *
      (food.price + selectedAddons.fold(0, (sum, addon) => sum + addon.price));
}
