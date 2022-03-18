import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/screens/bottom_navigation/bottom_navbar.dart';

import 'constants/custom_colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: CustomColors.drawer),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.white,
              selectedItemColor: CustomColors.selectedColors,
              unselectedItemColor: CustomColors.unSelectedColors),
        ),
        title: 'Material App',
        home: BottomNaviBar());
  }
}
