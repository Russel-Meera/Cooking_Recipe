import 'package:flutter/material.dart';
import 'package:cookingrecipe/list/list.dart';

class MyFavGridView extends StatelessWidget {
  final Dish dish;

  const MyFavGridView({super.key, required this.dish});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        dish.imageAsset,
        fit: BoxFit.cover,
        width: 50,
        height: 50,
      ),
      title: Text(dish.name),
      onTap: () {},
    );
  }
}
