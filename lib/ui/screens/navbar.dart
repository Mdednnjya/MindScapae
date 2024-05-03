import 'package:flutter/material.dart';
import 'package:mindscape/ui/screens/home_screen.dart';
import 'package:mindscape/ui/screens/chat_screen.dart';
import 'package:mindscape/ui/screens/user_screen.dart';
import 'package:mindscape/ui/screens/search_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
int _currentIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List _screen = [
    HomePage(),
    SearchScreen(),
    ChatScreen(),
    UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _navigateBottomBar,
        items: [
            BottomNavigationBarItem(
            icon: Image.asset('assets/images/icons/property.png'),
            label: 'Home',
            ),
            BottomNavigationBarItem(
            icon: Image.asset('assets/images/icons/spyglass.png'),
            label: 'Search',
            ),
            BottomNavigationBarItem(
            icon: Image.asset('assets/images/icons/bot.png'),
            label: 'Chat',
            ),
            BottomNavigationBarItem(
            icon: Image.asset('assets/images/icons/user.png'),
            label: 'User',
            ),
        ],
      ),
    );
  }
}

