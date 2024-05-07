import 'package:flutter/material.dart';

void showFeedback(BuildContext context, String mood) {
  String feedbackText;
  IconData iconData;
  Color iconColor;
  Color backgroundColor;

  switch (mood) {
    case 'joyful':
      feedbackText = 'Thank you for sharing. Keep up the joyful mood!';
      iconData = Icons.sentiment_satisfied_alt;
      iconColor = Colors.green;
      backgroundColor = Color(0xFFF3FDFF); // Warna latar belakang untuk joyful
      break;
    case 'anxious':
      feedbackText =
      'Thank you for sharing. Consider try our meditation feature to help calm your mind.';
      iconData = Icons.sentiment_dissatisfied;
      iconColor = Colors.amber;
      backgroundColor = Color(0xFFFAFAF2); // Warna latar belakang untuk anxious
      break;
    case 'sad':
      feedbackText =
      'Thank you for sharing. We encourage you to try GABI AI as your personal consultation.';
      iconData = Icons.sentiment_very_dissatisfied;
      iconColor = Colors.red;
      backgroundColor = Color(0xFFFFF6F6); // Warna latar belakang untuk sad
      break;
    default:
      feedbackText = 'Terima kasih telah berbagi mood Anda!';
      iconData = Icons.sentiment_satisfied;
      iconColor = Colors.green;
      backgroundColor = Color(0xFFF3FDFF);
  }

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          Icon(
            iconData,
            color: iconColor,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              feedbackText,
              style: TextStyle(
                color: Colors.black, // Warna teks hitam
                fontFamily: 'Inter',
                letterSpacing: -0.41,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(16),
    ),
  );
}
