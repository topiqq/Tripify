import 'package:flutter/material.dart';
import 'views/home_page.dart';
import 'views/explore_page.dart';
import 'views/favorite_page.dart';
import 'core/theme/theme.dart';

void main() {
  runApp(const TripifyApp());
}

class TripifyApp extends StatelessWidget {
  const TripifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tripify',
      theme: AppTheme.lightTheme,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  String? selectedCategory;

  void _openExploreWithCategory(String category) {
    setState(() {
      selectedCategory = category;
      _currentIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      HomePage(
        onSeeAllTap: () => setState(() => _currentIndex = 1),
        onCategorySelected: _openExploreWithCategory,
      ),
      ExplorePage(category: selectedCategory),
      const FavoritePage(),
    ];

    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;

            if (index == 1) {
              selectedCategory = null;
            }
          });
        },
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_rounded),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: "Favorite",
          ),
        ],
      ),
    );
  }
}
