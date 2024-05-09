import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final String leading;
  final String title;
  final String? trailing;
  final VoidCallback onTap;
  final Color? textColor;
  final FontWeight? fontWeight;
  final Color? titleColor;

  const RowWidget({
    super.key,
    required this.leading,
    required this.title,
    this.trailing,
    required this.onTap,
    this.textColor,
    this.fontWeight,
    this.titleColor = const Color(0xFF5C5C5C),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        child: Row(
          children: [
            Image.asset(leading),
            SizedBox(width: 16.0),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: fontWeight ?? FontWeight.w500,
                  letterSpacing: -0.41,
                  height: 1.3,
                  color: textColor ?? titleColor,
                ),
              ),
            ),
            if (trailing != null)
              Image.asset(
                trailing!,
                alignment: Alignment.centerRight,
              ),
          ],
        ),
      ),
    );
  }
}