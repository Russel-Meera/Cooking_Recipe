import 'package:flutter/material.dart';
import 'package:cookingrecipe/list/likedlist.dart';
import 'package:cookingrecipe/recipe_details.dart';
import 'package:cookingrecipe/list/list.dart';

class MyLikeListView extends StatelessWidget {
  final Dish dish;

  const MyLikeListView({super.key, required this.dish});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: AssetImage(dish.imageAsset),
            fit: BoxFit.cover,
          ),
        ),
        child: ListTile(
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              setState(() {
                LikedList.removeDish(dish);
              });
            },
          ),
          title: Container(
            height: 100,
            color: Colors.transparent,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dish.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeDetails(dish: dish),
              ),
            );
          },
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
