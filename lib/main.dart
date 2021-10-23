import 'dart:ui';

import 'package:app_shop/screen/bottom_navigation.dart';
import 'package:app_shop/screen/home_screen.dart';
import 'package:app_shop/screen/user_login_screen.dart';
import 'package:app_shop/screen/user_signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.white),
          headline2: TextStyle(color: Colors.white),
          headline3: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
          headline4: TextStyle(color: Colors.white),
          headline5: TextStyle(color: Colors.white),
          subtitle1: TextStyle(color: Colors.grey),
          subtitle2: TextStyle(color: Colors.white),
          bodyText1: TextStyle(color: Colors.white),
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      routes: {
        '/': (context) => const UserSignupScreen(),
        BottomNavigationScreen.routeName: (context) => BottomNavigationScreen(),
        UserLoginScreen.routeName: (context) => const UserLoginScreen(),
        UserSignupScreen.routeName: (context) => const UserSignupScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
