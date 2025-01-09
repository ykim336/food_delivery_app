import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/custom_button.dart';
import 'package:food_delivery_app/models/food_model.dart';
import 'package:food_delivery_app/models/restaurant_model.dart';
import 'package:food_delivery_app/themes/font_themes.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final FoodModel food;
  final Map<AddonModel, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    // init selected addons false
    for (AddonModel addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(FoodModel food, Map<AddonModel, bool> selectedAddons) {
    Navigator.pop(context);
    List<AddonModel> currentlySelectedAddons = [];
    for (AddonModel addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<RestaurantModel>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // food image
                Image.asset(
                  widget.food.imagePath,
                ),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // food name
                      DMSansGenericText(
                        text: widget.food.name,
                        fontSize: 20,
                        fontColor: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),

                      SizedBox(height: 1), // spacer

                      DMSansGenericText(
                        text: '\$${widget.food.price.toString()}',
                        fontSize: 16,
                        fontColor: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),

                      SizedBox(height: 10), // spacer

                      // food description
                      DMSansLightText(
                        text: widget.food.description,
                        fontSize: 14,
                        fontColor: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.w500,
                      ),

                      SizedBox(height: 15), // spacer
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                        indent: 25,
                        endIndent: 25,
                      ),
                      SizedBox(height: 10),

                      DMSansGenericText(
                        text: 'Add-ons',
                        fontSize: 14,
                        fontColor: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),

                      SizedBox(height: 10),

                      // addons
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            AddonModel addon =
                                widget.food.availableAddons[index];
                            return CheckboxListTile(
                              title: DMSansGenericText(text: addon.name),
                              subtitle:
                                  DMSansLightText(text: addon.price.toString()),
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                              value: widget.selectedAddons[addon],
                            );
                          },
                        ),
                      ),

                      SizedBox(height: 15), // spacer

                      // button -> add to cart
                      CustomButton(
                        onTap: () => addToCart(
                          widget.food,
                          widget.selectedAddons,
                        ),
                        text: 'Add To Cart',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.7,
            child: Container(
              margin: EdgeInsets.only(left: 25, top: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
