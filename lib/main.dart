import 'dart:convert';

import 'package:app_shop/screen/bottom_navigation.dart';
import 'package:app_shop/screen/home_screen.dart';
import 'package:app_shop/screen/user_login_screen.dart';
import 'package:app_shop/screen/user_signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_theme/json_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeStr = await rootBundle.loadString('assets/flutter_theme.json');
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;
  runApp(MyApp(themeData: theme));
}

class MyApp extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var themeData;
  MyApp({Key? key, this.themeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
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
