import 'package:flutter/material.dart';
import 'package:cookingrecipe/list/favlist.dart';
import 'package:cookingrecipe/widgets/myfavgridview.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFavourites extends StatefulWidget {
  const MyFavourites({super.key});

  @override
  _MyFavouritesState createState() => _MyFavouritesState();
}

class _MyFavouritesState extends State<MyFavourites> {
  @override
  void initState() {
    super.initState();
    FavList.init().then((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final favDishes = FavList.favDishes;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Saved Recipe",
          style: GoogleFonts.robotoSlab(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.amber[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView.builder(
            itemCount: favDishes.length,
            itemBuilder: (context, index) {
              final dish = favDishes[index];
              return MyFavGridView(dish: dish);
            },
          ),
        ),
      ),
    );
  }
}
