import 'package:flutter/material.dart';
import "screens/onboarding_screen.dart";

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
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
