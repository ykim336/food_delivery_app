import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/cart_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSliverAppbar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const CustomSliverAppbar({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      centerTitle: true,
      pinned: true,
      expandedHeight: 340,
      collapsedHeight: 120,
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(
        "Sunset Diner",
        style: GoogleFonts.dmSans(
          color: Theme.of(context).colorScheme.inversePrimary,
          fontWeight: FontWeight.w500,
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
      actions: [
        // cart button
        IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(),
            ),
          ),
          icon: Icon(
            Icons.shopping_cart,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        )
      ],
    );
  }
}
