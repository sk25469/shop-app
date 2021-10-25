import 'package:app_shop/screen/cart_screen.dart';
import 'package:app_shop/screen/food_screen.dart';
import 'package:app_shop/screen/medicine_screen.dart';
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
      'page': const FoodScreen(),
      'title': 'Food Screen',
    },
    {
      'page': const MedicineScreen(),
      'title': 'Medicine Screen',
    },
    {
      'page': ProfileScreen(),
      'title': 'My Profile',
    },
  ];

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'] as Widget,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Visibility(
        visible: !keyboardIsOpen,
        child: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Colors.purple,
          onPressed: () {
            Navigator.of(context).pushNamed(CartScreen.routeName);
          },
          child: const Icon(Icons.shopping_cart_outlined),
          highlightElevation: 10,
        ),
      ),
      bottomNavigationBar: TitledBottomNavigationBar(
        onTap: _selectPage,
        curve: Curves.bounceInOut,
        currentIndex: _selectedPageIndex,
        reverse: true,
        inactiveColor: Colors.black,
        items: [
          TitledNavigationBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
          ),
          TitledNavigationBarItem(
            icon: const Icon(Icons.fastfood),
            title: const Text('Food'),
          ),
          TitledNavigationBarItem(
            icon: const Icon(Icons.medication),
            title: const Text('Medicine'),
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
