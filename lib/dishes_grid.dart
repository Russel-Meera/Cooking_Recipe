import 'package:cookingrecipe/list/list.dart';
import 'package:cookingrecipe/widgets/mygridview.dart';
import 'package:flutter/material.dart';

class MyDishesGrid extends StatefulWidget {
  const MyDishesGrid({super.key});

  @override
  State<MyDishesGrid> createState() => _MyDishesGridState();
}

class _MyDishesGridState extends State<MyDishesGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Dishes'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: Dish.dishes.length,
        itemBuilder: (context, index) {
          final currentDish = Dish.dishes[index];
          return Mygridview(dish: currentDish);
        },
      ),
    );
  }
}
