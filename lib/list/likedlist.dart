import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:cookingrecipe/list/list.dart';

class LikedList {
  static List<Dish> likedDishes = [];

  static Future<void> init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? savedDishes = prefs.getStringList('likedDishes');
    if (savedDishes != null) {
      likedDishes =
          savedDishes.map((dish) => Dish.fromJson(jsonDecode(dish))).toList();
    }
  }

  static Future<void> addDish(Dish dish) async {
    likedDishes.add(dish);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> savedDishes =
        likedDishes.map((dish) => jsonEncode(dish.toJson())).toList();
    await prefs.setStringList('likedDishes', savedDishes);
  }

  static bool isDishHeart(Dish dish) {
    return likedDishes.any((d) => d.id == dish.id);
  }

  static Future<void> removeDish(Dish dish) async {
    likedDishes.removeWhere((d) => d.id == dish.id);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> savedDishes =
        likedDishes.map((dish) => jsonEncode(dish.toJson())).toList();
    await prefs.setStringList('likedDishes', savedDishes);
  }
}
