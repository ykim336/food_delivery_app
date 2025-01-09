import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food_model.dart';

class RestaurantModel extends ChangeNotifier {
  final List<FoodModel> _menu = [
    // burgers
    FoodModel(
      name: 'Tasty Burger',
      description:
          'A juicy, seasoned beef patty topped with melted cheddar cheese, crisp lettuce, fresh tomato slices, crunchy pickles.',
      imagePath: 'assets/burgers/burger1.jpg',
      price: 7.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        AddonModel(name: 'Extra cheese', price: 0.99),
        AddonModel(name: 'Bacon', price: 1.99),
        AddonModel(name: 'Avocado', price: 2.99),
      ],
    ),
    FoodModel(
      name: 'Juicy Papa Burger',
      description:
          'A smoky delight featuring a flame-grilled beef patty, crispy bacon strips, melted pepper jack cheese, caramelized onions, and a generous drizzle of tangy BBQ sauce, served on a buttery brioche bun.',
      imagePath: 'assets/burgers/burger2.jpg',
      price: 6.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        AddonModel(name: 'BBQ', price: 0.99),
        AddonModel(name: 'Bacon', price: 1.99),
        AddonModel(name: 'Fries', price: 2.99),
      ],
    ),
    FoodModel(
      name: 'Deli Martha Burger',
      description:
          'Turn up the heat with this fiery creation! A beef patty layered with pepper jack cheese, fresh jalapeño slices, spicy chipotle aioli, and crunchy fried onions, all packed into a toasted pretzel bun.',
      imagePath: 'assets/burgers/burger3.jpg',
      price: 11.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        AddonModel(name: 'Hummus', price: 0.99),
        AddonModel(name: 'Bacon', price: 1.99),
        AddonModel(name: 'Spread', price: 2.99),
      ],
    ),

    // salads
    FoodModel(
      name: 'Dreamy Salad',
      description:
          'A vibrant mix of crisp romaine lettuce, juicy cherry tomatoes, crunchy cucumbers, shredded carrots, and sliced red onions, topped with a sprinkle of croutons and served with your choice of zesty vinaigrette or creamy ranch dressing.',
      imagePath: 'assets/salads/salad1.jpg',
      price: 3.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        AddonModel(name: 'Lettuce', price: 0.99),
        AddonModel(name: 'Bacon', price: 1.99),
        AddonModel(name: 'Ham', price: 2.99),
      ],
    ),
    FoodModel(
      name: 'Ranch Salad',
      description:
          'A refreshing blend of mixed greens, ripe Kalamata olives, tangy feta cheese, diced cucumbers, and sweet red peppers, drizzled with olive oil and lemon juice and finished with a dash of oregano.',
      imagePath: 'assets/salads/salad2.jpg',
      price: 5.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        AddonModel(name: 'Lettuce', price: 0.99),
        AddonModel(name: 'Bacon', price: 1.99),
        AddonModel(name: 'Ham', price: 2.99),
      ],
    ),
    FoodModel(
      name: 'Protein Packed Salad',
      description:
          'Crisp romaine hearts tossed in a creamy Caesar dressing, topped with grilled chicken, crunchy garlic croutons, shaved Parmesan cheese, and a hint of black pepper for a classic yet hearty twist.',
      imagePath: 'assets/salads/salad3.jpg',
      price: 5.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        AddonModel(name: 'Lettuce', price: 0.99),
        AddonModel(name: 'Bacon', price: 1.99),
        AddonModel(name: 'Ham', price: 2.99),
      ],
    ),

    // sides
    FoodModel(
      name: 'Crispy Fries',
      description:
          'Golden and perfectly crisp, these hand-cut potato fries are lightly seasoned with sea salt for a simple, irresistible snack or side.',
      imagePath: 'assets/sides/side1.jpg',
      price: 1.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [],
    ),
    FoodModel(
      name: 'Tender Fries',
      description:
          'A generous serving of crispy fries smothered in melted cheddar cheese, topped with smoky bacon bits, green onions, and a drizzle of creamy ranch dressing.',
      imagePath: 'assets/sides/side2.jpg',
      price: 2.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [],
    ),
    FoodModel(
      name: 'Onion Rings',
      description:
          'Thick-cut onion rings dipped in a seasoned batter and fried to a perfect crunch, served with a tangy dipping sauce on the side.',
      imagePath: 'assets/sides/side3.jpg',
      price: 1.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [],
    ),

    // desserts
    FoodModel(
      name: 'Ice Cream (Vanilla)',
      description:
          'A rich, decadent chocolate cake with a gooey molten center, served warm and topped with a scoop of creamy vanilla ice cream and a drizzle of chocolate sauce.',
      imagePath: 'assets/desserts/dessert1.jpg',
      price: 12.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [],
    ),
    FoodModel(
      name: 'Ice Cream (Chocolate)',
      description:
          'A rich, decadent chocolate cake with a gooey molten center, served warm and topped with a scoop of creamy vanilla ice cream and a drizzle of chocolate sauce.',
      imagePath: 'assets/desserts/dessert2.jpg',
      price: 12.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [],
    ),
    FoodModel(
      name: 'Ice Cream (Cherry)',
      description:
          'A rich, decadent chocolate cake with a gooey molten center, served warm and topped with a scoop of creamy vanilla ice cream and a drizzle of chocolate sauce.',
      imagePath: 'assets/desserts/dessert3.jpg',
      price: 12.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [],
    ),

    // drinks
    FoodModel(
      name: 'Coca Drink',
      description:
          'A refreshing blend of freshly squeezed lemons, crisp water, and just the right amount of sugar, served over ice with a lemon slice garnish.',
      imagePath: 'assets/drinks/drink1.jpg',
      price: 2.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [],
    ),
    FoodModel(
      name: 'Momoa Drink',
      description:
          'A refreshing blend of freshly squeezed lemons, crisp water, and just the right amount of sugar, served over ice with a lemon slice garnish.',
      imagePath: 'assets/drinks/drink2.jpg',
      price: 2.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [],
    ),
    FoodModel(
      name: 'Coca Drink 2',
      description:
          'Rich espresso combined with creamy milk and a swirl of caramel syrup, poured over ice and topped with whipped cream and a caramel drizzle.',
      imagePath: 'assets/drinks/drink3.jpg',
      price: 2.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [],
    ),
    FoodModel(
      name: 'Coca Drink',
      description:
          'A refreshing blend of freshly squeezed lemons, crisp water, and just the right amount of sugar, served over ice with a lemon slice garnish.',
      imagePath: 'assets/drinks/drink1.jpg',
      price: 2.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [],
    ),
    FoodModel(
      name: 'Momoa Drink',
      description:
          'A refreshing blend of freshly squeezed lemons, crisp water, and just the right amount of sugar, served over ice with a lemon slice garnish.',
      imagePath: 'assets/drinks/drink2.jpg',
      price: 2.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [],
    ),
    FoodModel(
      name: 'Coca Drink 2',
      description:
          'Rich espresso combined with creamy milk and a swirl of caramel syrup, poured over ice and topped with whipped cream and a caramel drizzle.',
      imagePath: 'assets/drinks/drink3.jpg',
      price: 2.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [],
    ),
  ];

  /* 
  
  G E T T E R S

  */
  List<FoodModel> get menu => _menu;
  List<CartItem> get cart => _cart;

  /* 
  
  O P E R A T O R S

  */

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(FoodModel food, List<AddonModel> selectedAddons) {
    // see if there is a cart item already with same food and selected addon
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if food items are same
      bool isSameFood = item.food == food;
      // check if the list of selected addons are the same
      bool isSameAddon =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddon;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }

    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    // see if there is a cart item already with same food and selected addon
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      total += cartItem.totalPrice;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int total = 0;
    for (CartItem i in _cart) {
      total += i.quantity;
    }
    return total;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /* 
  
  H E L P E R S

  */

  // generate receipt

  // format double value into money

  // format list of addons into a string summary
}
