import 'package:flutter/material.dart';
import 'package:cookingrecipe/list/favlist.dart';
import 'package:cookingrecipe/widgets/myfavgridview.dart';

class MyFavourites extends StatelessWidget {
  const MyFavourites({super.key});

  @override
  Widget build(BuildContext context) {
    final favDishes = FavList.favDishes;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Recipe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView.builder(
            itemCount: favDishes.length,
            itemBuilder: (context, index) {
              final dish = favDishes[index];
              return MyFavGridView(dish: dish);
            },
          ),
        ),
      ),
    );
  }
}
