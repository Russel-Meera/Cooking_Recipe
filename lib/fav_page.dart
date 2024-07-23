// fav_page.dart

import 'package:flutter/material.dart';
import 'package:cookingrecipe/list/favlist.dart'; // Import FavList
import 'package:cookingrecipe/widgets/myfavgridview.dart'; // Import MyFavGridView

class MyFavourites extends StatelessWidget {
  const MyFavourites({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the list of favorite dishes from FavList
    final favDishes = FavList.favDishes;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favDishes.length,
        itemBuilder: (context, index) {
          final dish = favDishes[index];
          return MyFavGridView(dish: dish);
        },
      ),
    );
  }
}
