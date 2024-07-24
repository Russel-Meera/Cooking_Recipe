import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cookingrecipe/recipe_details.dart';
import 'package:cookingrecipe/list/list.dart';

class MyHorizontal extends StatelessWidget {
  const MyHorizontal({super.key, required Dish dish});

  @override
  Widget build(BuildContext context) {
    final dishes = Dish.dishes;

    final porkRecipes =
        dishes.where((dish) => dish.category.contains('Pork')).toList();
    final fishRecipes =
        dishes.where((dish) => dish.category.contains('Fish')).toList();
    final chickenRecipes =
        dishes.where((dish) => dish.category.contains('Chicken')).toList();
    final vegetableRecipes =
        dishes.where((dish) => dish.category.contains('Vegetable')).toList();

    return Column(
      children: [
        CategorySection(category: 'Pork Recipe', dishes: porkRecipes),
        CategorySection(category: 'Fish Recipe', dishes: fishRecipes),
        CategorySection(category: 'Chicken Recipe', dishes: chickenRecipes),
        CategorySection(category: 'Vegetable', dishes: vegetableRecipes),
      ],
    );
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection(
      {super.key, required this.category, required this.dishes});

  final String category;
  final List<Dish> dishes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            category,
            style: GoogleFonts.robotoSlab(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dishes.length,
            itemBuilder: (context, index) {
              return MyHorizontalItem(dish: dishes[index]);
            },
          ),
        ),
      ],
    );
  }
}

class MyHorizontalItem extends StatelessWidget {
  const MyHorizontalItem({super.key, required this.dish});

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RecipeDetails(dish: dish),
            ),
          );
        },
        child: Card(
          elevation: 5,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  dish.imageAsset,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Positioned(
                bottom: 8,
                left: 8,
                right: 8,
                child: Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    dish.name,
                    style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
