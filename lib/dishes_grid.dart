import 'package:cookingrecipe/list/list.dart';
import 'package:cookingrecipe/widgets/horizontallist.dart';
import 'package:cookingrecipe/widgets/mygridview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDishesGrid extends StatefulWidget {
  const MyDishesGrid({super.key});

  @override
  State<MyDishesGrid> createState() => _MyDishesGridState();
}

class _MyDishesGridState extends State<MyDishesGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.amber[400],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                  child: Text(
                    "Category",
                    style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.amber[400],
            ),
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Dish.dishes.length,
              itemBuilder: (context, index) {
                final dish = Dish.dishes[index];
                return MyHorizontal(dish: dish);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 5.0, 0, 0),
                child: Text(
                  "Recipes",
                  style: GoogleFonts.robotoSlab(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
