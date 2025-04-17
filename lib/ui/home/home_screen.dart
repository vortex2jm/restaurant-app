import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/data/category_data.dart';
import 'package:tech_taste/data/restaurant_data.dart';
import 'package:tech_taste/model/restaurant_model.dart';
import 'package:tech_taste/ui/_core/colors.dart';
import 'package:tech_taste/ui/home/widgets/category_widget.dart';
import 'package:tech_taste/ui/home/widgets/restaurant_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RestaurantData restaurantData = Provider.of<RestaurantData>(context);

    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Implement cart functionality
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 32,
            children: [
              Center(
                child: Text(
                  "Tech Taste",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    fontFamily: GoogleFonts.caveat().fontFamily,
                    color: AppColors.destak,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "Welcome to the best food delivery app!",
                style: TextStyle(color: AppColors.textSecondary),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Text("Choose by category"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: List.generate(CategoryData.categories.length, (
                    index,
                  ) {
                    return CategoryWidget(
                      category: CategoryData.categories[index],
                    );
                  }),
                ),
              ),
              Image.asset('assets/images/banner_promo.png'),
              Text("Best ratings"),
              Column(
                spacing: 16,
                children: List.generate(restaurantData.restList.length, (
                  index,
                ) {
                  RestaurantModel restaurant = restaurantData.restList[index];
                  return RestaurantWidget(restaurant: restaurant);
                }),
              ),
              SizedBox(height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
