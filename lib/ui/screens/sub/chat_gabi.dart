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
        title: Text('Chat Gabi'),
      ),
    );
  }
}