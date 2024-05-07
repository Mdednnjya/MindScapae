// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.fromLTRB(55, 55, 55, 25),
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(45),
            bottomRight: Radius.circular(45),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/people.png'),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Your Name',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'How are you doing today?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              },
            )
          ],
        ),
      ),
      const SizedBox(height: 20),
      Container(
        padding: const EdgeInsets.fromLTRB(55, 5, 55, 1),
        child: Column(
          children: [
        Text(
          'Your mood level,',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        LinearProgressIndicator(
          value: 0.5, // Replace with the desired value between 0 and 1
          minHeight: 10,
          backgroundColor: Colors.grey,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/live.png'),
        fit: BoxFit.none,
          ),
        ),
        child: Column(
          children: [
        Text(
          '101', 
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'People are meditating right now',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // route
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF41C9E2),
          ),
          child: const Text(
            'Join now',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/home/gabi_banner.svg"),
            const SizedBox(height: 30),
            const Text(
              'Try GABI AI',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "Explore a safe space where you can share your thoughts, feelings, and concerns. Whether you're seeking advice or simply need someone to listen, GABI is here for you",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF5C5C5C),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // route
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF41C9E2),
              ),
              child: const Text(
                'Chat Now',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
