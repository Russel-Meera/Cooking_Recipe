// list/favlist.dart

import 'list.dart';

class FavList {
  static List<Dish> favDishes = [];

  // Method to add a dish to favorites
  static void addDish(Dish dish) {
    if (!favDishes.contains(dish)) {
      favDishes.add(dish);
    }
  }

  // Method to check if a dish is in favorites
  static bool isDishSaved(Dish dish) {
    return favDishes.contains(dish);
  }
}
