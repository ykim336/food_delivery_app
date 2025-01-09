import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food_model.dart';

class CustomTabbar extends StatelessWidget {
  final TabController tabController;

  const CustomTabbar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: _buildCategoryTabs(),
    );
  }
}
