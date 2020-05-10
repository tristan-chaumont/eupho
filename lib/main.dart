import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'utilities/constants.dart';

void main() {
  runApp(Eupho());
}

class Eupho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eupho',
      theme: ThemeData(
        scaffoldBackgroundColor: euphoBlue,
      ),
      home: LoginScreen(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
