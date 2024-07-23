import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:cookingrecipe/list/list.dart';

class FavList {
  static List<Dish> favDishes = [];

  static Future<void> init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? savedDishes = prefs.getStringList('favDishes');
    if (savedDishes != null) {
      favDishes =
          savedDishes.map((dish) => Dish.fromJson(jsonDecode(dish))).toList();
    }
  }

  static Future<void> addDish(Dish dish) async {
    favDishes.add(dish);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> savedDishes =
        favDishes.map((dish) => jsonEncode(dish.toJson())).toList();
    await prefs.setStringList('favDishes', savedDishes);
  }

  static bool isDishSaved(Dish dish) {
    return favDishes.any((d) => d.id == dish.id);
  }

  static Future<void> removeDish(Dish dish) async {
    favDishes.removeWhere((d) => d.id == dish.id);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> savedDishes =
        favDishes.map((dish) => jsonEncode(dish.toJson())).toList();
    await prefs.setStringList('favDishes', savedDishes);
  }
}
