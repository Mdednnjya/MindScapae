import 'package:flutter/material.dart';
import 'ui/screens/splash_screen.dart';
import 'ui/screens/welcome_screen.dart';
import 'ui/screens/sign_screen.dart';
import 'ui/screens/login_screen.dart';
import 'ui/screens/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindScape',
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}