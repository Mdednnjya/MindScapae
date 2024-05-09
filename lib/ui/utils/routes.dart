import 'package:flutter/material.dart';
import 'package:mindscape/ui/screens/chat_screen.dart';
import 'package:mindscape/ui/screens/home_screen.dart';
import 'package:mindscape/ui/screens/navbar.dart';
import 'package:mindscape/ui/screens/quitezone_intro_screen.dart';
import 'package:mindscape/ui/screens/search_screen.dart';
import 'package:mindscape/ui/screens/user_screen.dart';
import 'package:mindscape/ui/screens/sub/gabi/chat_gabi.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const NavBar());
      case '/search':
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case '/quitezone_intro':
        return MaterialPageRoute(builder: (_) => const QuitezoneIntroScreen());
      case '/chat':
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case '/user':
        return MaterialPageRoute(builder: (_) => const UserScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/chat_gabi':
        return MaterialPageRoute(builder: (_) => const ChatGabi());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}