import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
        Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(top: 50, left: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            'Heyaaa, Wanna start a chat today?',
            style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Choose which service you want to use',
            style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            ),
          ),
          ],
        ),
        ),
        GestureDetector(
        //gabi
        onTap: () {
          // route ke chat GABI
        },
        child: Container(
          width: double.infinity,
          height: 150,
          margin: EdgeInsets.only(left: 40, right: 40, top: 30),
          decoration: BoxDecoration(
          color: Color(0xFF41C9E2),
          borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
            padding: EdgeInsets.only(left: 40),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/images/icons/gabi_av.png'),
            ),
            ),
            SizedBox(width: 20),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
              height: 45,
              ),
              Text(
              'GABI',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),
              SizedBox(height: 5),
              Text(
              'Chat with your personal AI therapist',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
              
              ),
            ],
            ),
          ],
          ),
        ),
        ),
        GestureDetector(
        //expert
        onTap: () {
          // route ke chat expert
        },
        child: Container(
          width: double.infinity,
          height: 150,
          margin: EdgeInsets.only(left: 40, right: 40, top: 30),
          decoration: BoxDecoration(
          color: Color(0xFF41C9E2),
          borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
            padding: EdgeInsets.only(left: 40),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/images/icons/therapist_ico.png'),
            ),
            ),
            SizedBox(width: 20),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
              height: 45,
              ),
              Text(
              'Certified Therapist',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),
              SizedBox(height: 5),
              Text(
              'Chat with our trusted therapist',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
              ),
            ],
            ),
          ],
          ),
        ),
        ),
        Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(top: 40, left: 50),
        child: Text(
          'Try Saying: ',
          style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          ),
        ),
        ),
        Container(
        width: double.infinity,
        height: 400,
        margin: EdgeInsets.only(left: 40, right: 40, top: 30),
        decoration: BoxDecoration(
          color: Color(0xFF41C9E2),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
          Padding(
            padding: EdgeInsets.only(left: 40, top: 20),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/images/icons/gabi_av.png'),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                'GABI',
                style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
                ),
              ),
            ],
          ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
        ),
      ],
      ),
    );
  }
}