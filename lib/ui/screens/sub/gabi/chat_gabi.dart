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
        toolbarHeight: 80, 
      ),
      body: SafeArea(
        child: Column(
          children: [
        Expanded(
          child: Container(
            // Chat area
          ),
        ),
        Container(
          // Chat area
        ),
        Expanded(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 30),
              child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Row(
                children: [
              Expanded(
                child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                hintText: 'Type your message...',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  // Send message logic
                },
                child: Text('Send'),
              ),
                ],
              ),
            ),
              ),
            ),
          ],
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
