import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bottom_navigation_bar/constants/custom_colors.dart';
import 'package:bottom_navigation_bar/constants/custom_texts.dart';
import 'package:bottom_navigation_bar/constants/resources.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({Key? key}) : super(key: key);

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int selectedTab = 0;
  bool isLoad = false;

  void onSelectTab(int index) {
    if (selectedTab == index) return;
    setState(() {
      selectedTab = index;
    });
  }

  hideProgress() {
    setState(() {
      isLoad = true;
    });
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      hideProgress();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Меню'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Colors.red),
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        currentIndex: selectedTab,
        onTap: onSelectTab,
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              Images.subtract,
              color: CustomColors.selectedColors,
            ),
            icon: SvgPicture.asset(
              Images.subtract,
              color: Colors.grey,
            ),
            label: 'Персонажи',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              Images.group1,
              color: CustomColors.selectedColors,
            ),
            icon: SvgPicture.asset(
              Images.group1,
              color: Colors.grey,
            ),
            label: 'Локациии',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              Images.group4,
              color: CustomColors.selectedColors,
            ),
            icon: SvgPicture.asset(
              Images.group4,
              color: Colors.grey,
            ),
            label: 'Эпизоды',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              Images.group,
              color: CustomColors.selectedColors,
            ),
            icon: SvgPicture.asset(
              Images.group,
              color: Colors.grey,
            ),
            label: 'Настройки',
          ),
        ],
      ),
    );
  }
}
