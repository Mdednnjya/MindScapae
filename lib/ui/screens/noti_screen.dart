import 'package:flutter/material.dart';

class NotiScreen extends StatelessWidget {
  const NotiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Notifications'),
      ),
      body: Column(
        children: [
          NotificationTitleBar(),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Notification $index'),
                  subtitle: Text('This is a sample notification'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationTitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Recent',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            'Mark all as read',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}