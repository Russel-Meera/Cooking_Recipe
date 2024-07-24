import 'package:cookingrecipe/list/likedlist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cookingrecipe/list/list.dart';
import 'package:cookingrecipe/list/favlist.dart';

class RecipeDetails extends StatefulWidget {
  final Dish dish;

  const RecipeDetails({super.key, required this.dish});

  @override
  _RecipeDetailsState createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  late bool isSaved;
  late bool isHeart;

  @override
  void initState() {
    super.initState();
    isSaved = FavList.isDishSaved(widget.dish);
    isHeart = LikedList.isDishHeart(widget.dish);
  }

  void toggleLike() async {
    setState(() {
      if (isHeart) {
        LikedList.removeDish(widget.dish);
      } else {
        LikedList.addDish(widget.dish);
      }
      isHeart = !isHeart;
    });
  }

  void toggleSave() async {
    setState(() {
      if (isSaved) {
        FavList.removeDish(widget.dish);
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
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
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.dish.name,
                              style: GoogleFonts.robotoSlab(
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              isHeart ? Icons.favorite : Icons.favorite_border,
                              color: isHeart ? Colors.red : Colors.grey,
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
                      const SizedBox(height: 8),
                      Text(
                        'Category: ${widget.dish.category}',
                        style: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Description: ${widget.dish.description}',
                        style: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Recipe:',
                        style: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
