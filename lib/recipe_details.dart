import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cookingrecipe/list/list.dart';

class RecipeDetails extends StatelessWidget {
  final Dish dish;

  const RecipeDetails({super.key, required this.dish});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dish.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              dish.imageAsset,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dish.name,
                    style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Category: ${dish.category}',
                    style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    dish.description,
                    style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Recipe:',
                    style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    dish.recipe,
                    style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
