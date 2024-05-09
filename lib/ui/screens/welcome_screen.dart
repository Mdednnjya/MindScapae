import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mindscape/ui/screens/login_Screen.dart';
import 'sign_screen.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF41C9E2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 525,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/auth/welcome_asset.svg"),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            SizedBox(height: 70),
            Text(
              'Welcome to MindScape',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 27,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              'A sweet escape for your daily life',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 105),
            SizedBox(
              width: 315,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Text(
                  'Create an Account',
                  style: TextStyle(
                    color: Color(0xFF5C5C5C),
                  ),
                ),
              ),
            ),
            SizedBox(height: 14),
            SizedBox(
              width: 315,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Color(0xFF5C5C5C),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}