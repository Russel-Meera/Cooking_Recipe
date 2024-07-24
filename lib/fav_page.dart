import 'package:cookingrecipe/list/likedlist.dart';
import 'package:flutter/material.dart';
import 'package:cookingrecipe/list/favlist.dart';
import 'package:cookingrecipe/widgets/myfavgridview.dart';
import 'package:cookingrecipe/widgets/mylikelistview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cookingrecipe/list/list.dart';

class MyFavourites extends StatefulWidget {
  const MyFavourites({super.key});

  @override
  _MyFavouritesState createState() => _MyFavouritesState();
}

class _MyFavouritesState extends State<MyFavourites>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    FavList.init().then((_) {
      setState(() {});
    });
    LikedList.init().then((_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final favDishes = FavList.favDishes;
    final likedDishes = LikedList.likedDishes;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Recipes",
          style: GoogleFonts.robotoSlab(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.amber[400],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Saved Recipe'),
            Tab(text: 'Liked Recipe'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildRecipeList(favDishes, true),
          _buildRecipeList(likedDishes, false),
        ],
      ),
    );
  }

  Widget _buildRecipeList(List<Dish> dishes, bool isFav) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListView.builder(
          itemCount: dishes.length,
          itemBuilder: (context, index) {
            final dish = dishes[index];
            return isFav
                ? MyFavGridView(dish: dish)
                : MyLikeListView(dish: dish);
          },
        ),
      ),
    );
  }
}
