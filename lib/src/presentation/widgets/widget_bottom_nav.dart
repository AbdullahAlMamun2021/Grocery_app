import 'package:e_commerce/src/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import '../screen/screen_category.dart';
import '../screen/screen_deals.dart';
import '../screen/screen_favorite.dart';
import '../screen/screen_home.dart';
import '../screen/screen_more.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex = 0;
  final pages = [
    const HomeScreen(),
    CategoryScreen(),
    const DealScreen(),
    const FavoriteScreen(),
    const MoreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,

        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        unselectedItemColor: Colors.teal.shade100,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Categories",
            icon: Icon(Icons.category_outlined),
          ),
          BottomNavigationBarItem(
            label: "Deals",
            icon: Icon(Icons.discount),
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(
            label: "More",
            icon: Icon(Icons.menu),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
