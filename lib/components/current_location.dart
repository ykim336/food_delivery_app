import 'package:flutter/material.dart';
import 'package:food_delivery_app/themes/font_themes.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: DMSansGenericText(text: 'Your location'),
        content: TextField(
          decoration: InputDecoration(
            hintText: "Search address...",
            hintStyle: GoogleFonts.dmSans(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ),
        actions: [
          MaterialButton(
            // cancel
            onPressed: () => Navigator.pop(context),
            child: DMSansGenericText(text: 'Cancel'),
          ),
          MaterialButton(
            // cancel
            onPressed: () {
              Navigator.pop(context);
            },
            child: DMSansGenericText(text: 'Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver Now',
            style: GoogleFonts.dmSans(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Text(
                  '6901 Hollywood Blv',
                  style: GoogleFonts.dmSans(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
