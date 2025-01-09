import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food_model.dart';
import 'package:food_delivery_app/themes/font_themes.dart';

class FoodTile extends StatelessWidget {
  final FoodModel food;
  final void Function()? onTap;
  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 13.0, left: 13.0, top: 15.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DMSansGenericText(
                        text: food.name,
                      ),
                      DMSansGenericText(
                        text: '\$${food.price.toString()}',
                        fontColor: Theme.of(context).colorScheme.primary,
                      ),
                      SizedBox(height: 10),
                      DMSansGenericText(
                        text: '${food.description.substring(0, 80)}...',
                        fontColor: Theme.of(context).colorScheme.primary,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: FittedBox(
                    child: Image.asset(
                      food.imagePath,
                      height: 120.0,
                      width: 160.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
              indent: 25,
              endIndent: 25,
            ),
          )
        ],
      ),
    );
  }
}
