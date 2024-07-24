import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cookingrecipe/list/list.dart';
import 'package:cookingrecipe/widgets/mygridview.dart';

class MyDishesGrid extends StatefulWidget {
  const MyDishesGrid({super.key});

  @override
  State<MyDishesGrid> createState() => _MyDishesGridState();
}

class _MyDishesGridState extends State<MyDishesGrid> {
  String selectedCategory = 'Pork';

  @override
  Widget build(BuildContext context) {
    List<Dish> filteredDishes = Dish.dishes.where((dish) => dish.category == selectedCategory).toList();
    
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
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: ['Pork', 'Chicken', 'Fish'].map((category) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = category;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: selectedCategory == category ? Colors.orange : Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      category,
                      style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: selectedCategory == category ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
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
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: filteredDishes.length,
                    itemBuilder: (context, index) {
                      final currentDish = filteredDishes[index];
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
