import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/current_location.dart';
import 'package:food_delivery_app/components/custom_drawer.dart';
import 'package:food_delivery_app/components/custom_sliver_appbar.dart';
import 'package:food_delivery_app/components/custom_tabbar.dart';
import 'package:food_delivery_app/components/description_box.dart';
import 'package:food_delivery_app/components/food_tile.dart';
import 'package:food_delivery_app/models/food_model.dart';
import 'package:food_delivery_app/models/restaurant_model.dart';
import 'package:food_delivery_app/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<FoodModel> _filterMenuByCategory(
      FoodCategory category, List<FoodModel> fullMenu) {
    return fullMenu.where((food) => food.foodCategory == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<FoodModel> fullMenu) {
    return FoodCategory.values.map(
      (category) {
        List<FoodModel> categoryMenu =
            _filterMenuByCategory(category, fullMenu);
        return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return FoodTile(
              food: categoryMenu[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodPage(
                      food: categoryMenu[index],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    ).toList();
  }

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomSliverAppbar(
            title: CustomTabbar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // current location
                const CurrentLocation(),

                // description box
                const DescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<RestaurantModel>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
