import 'package:flutter/material.dart';

class MoodButton extends StatelessWidget {
  final String emoji;
  final String label;
  final String mood;
  final bool isSelected;
  final VoidCallback onPressed;

  const MoodButton({
    Key? key,
    required this.emoji,
    required this.label,
    required this.mood,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingValue = MediaQuery.of(context).size.width * 0.03; // Sesuaikan dengan resolusi layar

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: const Color(0xFFF3F3F3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.all(paddingValue), // Gunakan padding sesuai dengan resolusi layar
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
