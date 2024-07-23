// recipe_details.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cookingrecipe/list/list.dart';
import 'package:cookingrecipe/list/favlist.dart'; // Import favlist.dart

class RecipeDetails extends StatefulWidget {
  final Dish dish;

  const RecipeDetails({super.key, required this.dish});

  @override
  _RecipeDetailsState createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  bool isLiked = false;
  late bool isSaved;

  @override
  void initState() {
    super.initState();
    // Initialize isSaved based on FavList
    isSaved = FavList.isDishSaved(widget.dish);
  }

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  void toggleSave() {
    setState(() {
      if (isSaved) {
        // Optionally handle removing from favorites if needed
      } else {
        FavList.addDish(widget.dish);
      }
      isSaved = !isSaved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.dish.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.dish.imageAsset,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.dish.name,
                    style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Category: ${widget.dish.category}',
                    style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.dish.description,
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
                    widget.dish.recipe,
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
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : Colors.grey,
                ),
                onPressed: toggleLike,
              ),
              IconButton(
                icon: Icon(
                  isSaved ? Icons.bookmark : Icons.bookmark_border,
                  color: isSaved ? Colors.blue : Colors.grey,
                ),
                onPressed: toggleSave,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
