import 'package:desir/features/categories/categories_page.dart';
import 'package:desir/features/profile/profile_page.dart';
import 'package:flutter/material.dart';

import '../../common/Font.dart';
import '../home/home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  final _pages = const[
    HomePage(),
    CategoriesPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: 'Profile',
          ),
        ],
        unselectedLabelStyle: Font.apply(Colors.black26, FontStyle.regular, FontSize.h7),
        unselectedItemColor: Colors.black26.withOpacity(0.5),
        selectedLabelStyle:  Font.apply(Colors.black.withOpacity(0.8), FontStyle.medium, FontSize.h6),
        selectedItemColor: Colors.black.withOpacity(0.8),
        iconSize: 22,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
    );
  }
}
