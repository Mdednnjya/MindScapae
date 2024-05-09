import 'package:flutter/material.dart';

class ChatGabi extends StatefulWidget {
  const ChatGabi({super.key});

  @override
  State<ChatGabi> createState() => _ChatGabiState();
}

class _ChatGabiState extends State<ChatGabi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Row(
        children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/icons/gabi_av.png'),
          radius: 25,
        ),
        SizedBox(width: 20),
        Text('Chat Gabi'),
        ],
      ),
      toolbarHeight: 80, // Adjust the toolbar height as needed
      ),
      
    );
  }
}