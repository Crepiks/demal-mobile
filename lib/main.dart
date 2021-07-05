import 'package:flutter/material.dart';
import 'package:demal/components/common/bottom_navigation.dart';
import "package:demal/screens/home_screen.dart";
import 'package:demal/screens/tours_screen.dart';
import 'package:demal/screens/profile_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.purple,
          brightness: Brightness.light,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent),
      home: MainScreens(),
      debugShowCheckedModeBanner: false,
    );
  }
}

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
              Icon(Icons.home_outlined),
              Icon(Icons.park_outlined),
              Icon(Icons.map_outlined),
              Icon(Icons.favorite_border_outlined),
              Icon(Icons.person_outlined)
            ], selectedIndex: _selectedIndex, onTabPress: _onTabItemPressed)));
  }

  void _onTabItemPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
