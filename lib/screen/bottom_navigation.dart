import 'package:app_shop/screen/cart_screen.dart';
import 'package:app_shop/screen/home_screen.dart';
import 'package:app_shop/screen/profile_screen.dart';
import 'package:flutter/material.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(184, 140, 246, 1),
        selectedItemColor: Colors.white,
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'My Profile',
          ),
        ],
      ),
    );
  }
}
