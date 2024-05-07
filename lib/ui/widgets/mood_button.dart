import 'package:flutter/material.dart';

class MoodButton extends StatelessWidget {
  final String emoji;
  final String label;
  final String mood;
  final bool isSelected;
  final VoidCallback onPressed;

  const MoodButton({
    super.key,
    required this.emoji,
    required this.label,
    required this.mood,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: const Color(0xFFF3F3F3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            emoji,
            style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, color: Colors.black,),
          ),
          const SizedBox(width: 0.5),
          Text(
            label,
            style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, color: Colors.black,),
          ),
        ],
      ),
    );
  }
}