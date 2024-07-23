import 'package:cookingrecipe/dishes_grid.dart';
import 'package:cookingrecipe/fav_page.dart';
import 'package:cookingrecipe/search_page.dart';
import 'package:flutter/material.dart';

class MyLandingPage extends StatefulWidget {
  const MyLandingPage({super.key});

  @override
  State<MyLandingPage> createState() => _MyLandingPageState();
}

class _MyLandingPageState extends State<MyLandingPage> {
  int _selectedPage = 0;
  final _pageOption = [
    const MyDishesGrid(),
    const SearchPage(),
    const MyFavourites()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reciply'),
        centerTitle: true,
        backgroundColor: Colors.amber[400],
        // actions: [
        //   IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark))
        // ],
      ),
      body: _pageOption[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 20,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Icon(Icons.person),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyFavourites()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
