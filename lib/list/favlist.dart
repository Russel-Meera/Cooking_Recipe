import 'list.dart';

class FavList {
  static List<Dish> favDishes = [];

  static void addDish(Dish dish) {
    if (!favDishes.contains(dish)) {
      favDishes.add(dish);
    }
  }

  static bool isDishSaved(Dish dish) {
    return favDishes.contains(dish);
  }
}
