import 'package:flutter/material.dart';
import "home_screen.dart";
import "tours_screen.dart";
import "profile_screen.dart";
import "../components/common/bottom_navigation.dart";

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 4;

  static TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _pages = <Widget>[
    HomeScreen(),
    ToursScreen(),
    Text(
      'Index 2: Map',
      style: optionStyle,
    ),
    Text(
      'Index 3: Saved tours',
      style: optionStyle,
    ),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: BottomNavigation(icons: <Icon>[
              Icon(
                Icons.home_outlined,
                size: 32,
              ),
              Icon(
                Icons.park_outlined,
                size: 32,
              ),
              Icon(
                Icons.map_outlined,
                size: 32,
              ),
              Icon(
                Icons.favorite_border_outlined,
                size: 32,
              ),
              Icon(
                Icons.person_outlined,
                size: 32,
              )
            ], selectedIndex: _selectedIndex, onTabPress: _onTabItemPressed)));
  }

  void _onTabItemPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
