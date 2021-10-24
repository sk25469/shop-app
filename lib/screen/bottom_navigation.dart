import 'package:app_shop/screen/cart_screen.dart';
import 'package:app_shop/screen/home_screen.dart';
import 'package:app_shop/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class BottomNavigationScreen extends StatefulWidget {
  static const routeName = '/bottom-nav-screen';
  BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  var _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  final List<Map<String, Object>> _pages = [
    {
      'page': const HomeScreen(),
      'title': 'Shop App',
    },
    {
      'page': const CartScreen(),
      'title': 'Cart Screen',
    },
    {
      'page': ProfileScreen(),
      'title': 'My Profile',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: TitledBottomNavigationBar(
        onTap: _selectPage,
        curve: Curves.bounceInOut,
        currentIndex: _selectedPageIndex,
        items: [
          TitledNavigationBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
          ),
          TitledNavigationBarItem(
            icon: const Icon(Icons.shopping_cart_rounded),
            title: const Text('Cart'),
          ),
          TitledNavigationBarItem(
            icon: const Icon(Icons.account_circle_outlined),
            title: const Text('Profile'),
          ),
        ],
      ),
    );
  }
}
