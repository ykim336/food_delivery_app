import 'package:flutter/material.dart';
import 'package:food_delivery_app/themes/font_themes.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 25.0, left: 25.0, bottom: 25.0),
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      child: Row(
        children: [
          // delivery fee
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DMSansGenericText(text: '\$0.99'),
              DMSansLightText(text: 'Delivery fee'),
            ],
          ),

          SizedBox(width: 25.0),

          // delivery time
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DMSansGenericText(text: '15-30 min'),
              DMSansLightText(text: 'Delivery time'),
            ],
          ),
        ],
      ),
    );
  }
}
