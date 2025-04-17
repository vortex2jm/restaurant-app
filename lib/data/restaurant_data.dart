import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:tech_taste/model/restaurant_model.dart';

class RestaurantData extends ChangeNotifier {
  List<RestaurantModel> restList = [];
  
  Future<void> getRestaurants() async {
    String jsonString = await rootBundle.loadString('assets/data/data.json');
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> restaurants = data['restaurants'];

    for (var restaurant in restaurants) {
      RestaurantModel rest = RestaurantModel.fromMap(restaurant);
      restList.add(rest);
    }
  }
}
