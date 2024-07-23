import 'package:flutter/material.dart';
import 'package:cookingrecipe/list/list.dart';

class Mygridview extends StatelessWidget {
  const Mygridview({super.key, required this.dish});

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            8), // Optional: rounded corners for the container
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Card(
            elevation: 5,
            child: Column(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 3 / 2,
                    child: Image.asset(
                      dish.imageAsset,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: Colors.black54, // Semi-transparent background
                borderRadius: BorderRadius.circular(
                    4), // Rounded corners for the text container
              ),
              child: Text(
                dish.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         dish.name,
          //         style: const TextStyle(
          //           fontSize: 16,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       // Text(dish.category),
          //       const SizedBox(height: 5),
          //       // Text(dish.description),
          //     ],
          //   ),
          // ),
