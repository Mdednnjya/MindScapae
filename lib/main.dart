import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:mindscape/consts.dart';
import 'package:mindscape/ui/screens/home_screen.dart';
<<<<<<< HEAD
import 'package:mindscape/ui/utils/utils.dart';
=======
import 'package:mindscape/ui/screens/subscription_screen.dart';
>>>>>>> d506f596d444a96d523c4ed4deeac925c8e1eb49
import 'ui/screens/splash_screen.dart';
import 'ui/screens/welcome_screen.dart';
import 'ui/screens/sign_screen.dart';
import 'ui/screens/login_screen.dart';
import 'ui/screens/navbar.dart';
import 'ui/screens/search_screen.dart';
import 'ui/screens/quitezone_intro_screen.dart';
import 'package:mindscape/ui/utils/routes.dart';
import 'ui/screens/user_screen.dart';


void main() async{
  await setup();
  Gemini.init(
    apiKey: GEMINI_API_KEY,
  );
  runApp(MyApp());
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SetupFirebase();
  await registerServices();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindScape',
      debugShowCheckedModeBanner: false,
      home: NavBar(),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}