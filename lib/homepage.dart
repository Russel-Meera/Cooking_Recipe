import 'package:cookingrecipe/dishes_grid.dart';
import 'package:cookingrecipe/fav_page.dart';
import 'package:cookingrecipe/main.dart';
import 'package:cookingrecipe/search_page.dart';
import 'package:flutter/material.dart';

class MyLandingPage extends StatefulWidget {
  final VoidCallback onLogout;
  
  const MyLandingPage({super.key, required this.onLogout});

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

  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
                widget.onLogout(); 
              },
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }
 
  void _changeTheme(bool isDarkMode) {
    ThemeData themeData = isDarkMode ? MyApp.darkTheme : MyApp.lightTheme;
    MyApp.themeNotifier.value = themeData;
  }

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
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
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
             ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Dark mode'),
              trailing: Switch(
                value: MyApp.themeNotifier.value.brightness == Brightness.dark,
                onChanged: (value) {
                  _changeTheme(value);
                },
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Bookmarks'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyFavourites()));
              },
            ),
             ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: _showLogoutDialog, 
            ),
          ],
        ),
      ),
    );
  }
}
