// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/cart_tile.dart';
import 'package:food_delivery_app/components/custom_button.dart';
import 'package:food_delivery_app/models/restaurant_model.dart';
import 'package:food_delivery_app/pages/payment_page.dart';
import 'package:food_delivery_app/themes/font_themes.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RestaurantModel>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            centerTitle: true,
            title: DMSansGenericText(
              text: 'Cart',
              fontSize: 16,
            ),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: DMSansGenericText(
                          text: 'Are you sure you want to clear cart?',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              userCart.clear();
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: DMSansLightText(text: 'Yes'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: DMSansLightText(text: 'No'),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.delete_outline,
                  ))
            ],
          ),
          body: Column(
            children: [
              userCart.isEmpty
                  ? Expanded(
                      child: Center(
                        child: DMSansGenericText(text: 'Cart is empty...'),
                      ),
                    )
                  : Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          final cartItem = userCart[index];
                          return CartTile(cartItem: cartItem);
                        },
                      ),
                    ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: CustomButton(
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentPage(),
                          ),
                        ),
                    text: 'Go to checkout'),
              ),
            ],
          ),
        );
      },
    );
  }
}
