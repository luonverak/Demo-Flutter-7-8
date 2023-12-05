import 'package:demo2/view/profile_screen.dart';
import 'package:demo2/view/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import 'favorite_screen.dart';
import 'home_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int selectedIndex = 0;

  final List<Widget> page = const [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 1), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: page,
      ),
      bottomNavigationBar: SlidingClippedNavBar.colorful(
        backgroundColor: Colors.white,
        onButtonPressed: onButtonPressed,
        iconSize: 30,
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            icon: Icons.home,
            title: 'Home',
            activeColor: Colors.blue,
            inactiveColor: Colors.orange,
          ),
          BarItem(
            icon: Icons.search_rounded,
            title: 'Search',
            activeColor: Colors.blue,
            inactiveColor: Colors.green,
          ),
          BarItem(
            icon: Icons.favorite_border,
            title: 'Favorite',
            activeColor: Colors.blue,
            inactiveColor: Colors.red,
          ),
          BarItem(
            icon: Icons.person,
            title: 'Profile',
            activeColor: Colors.blue,
            inactiveColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
