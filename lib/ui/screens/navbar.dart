import 'package:flutter/material.dart';
import 'package:mindscape/ui/screens/home_screen.dart';
import 'package:mindscape/ui/screens/chat_screen.dart';
import 'package:mindscape/ui/screens/user_screen.dart';
import 'package:mindscape/ui/screens/search_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              _currentIndex == 0 ? 'assets/images/icons/property_cyan.png' : 'assets/images/icons/property.png',
              width: 24,
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _currentIndex == 1 ? 'assets/images/icons/spyglass_cyan.png' : 'assets/images/icons/spyglass.png',
              width: 24,
              height: 24,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _currentIndex == 2 ? 'assets/images/icons/bot_cyan.png' : 'assets/images/icons/bot.png',
              width: 24,
              height: 24,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _currentIndex == 3 ? 'assets/images/icons/user_cyan.png' : 'assets/images/icons/user.png',
              width: 24,
              height: 24,
            ),
            label: 'User',
          ),
        ],
      ),
    );
  }

  final List _screen = [
    HomePage(),
    SearchScreen(),
    ChatScreen(),
    UserScreen(),
  ];
}
