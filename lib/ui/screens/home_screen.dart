// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
              radius: 40,
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
          child: Text('Join them'),
        ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Image.asset(
          'assets/images/gabibanner.png',
          width: 300,
          height: 300,
        ),
        SizedBox(height: 10),
        Text(
          'Try GABI AI',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Heading 2',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // route
          },
          child: Text('Chat Now'),
        ),
          ],
        ),
      ),
    ]);
  }
}
