import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgramWidget extends StatelessWidget {
  final String assetPath;
  final String text;
  final String route;

  const ProgramWidget({
    Key? key,
    required this.assetPath,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: 150,
        height: 180,
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        decoration: BoxDecoration(
          color: const Color(0x3000000),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            assetPath.endsWith('.svg')
                ? SvgPicture.asset(
              assetPath,
              fit: BoxFit.contain,
              height: 100,
            )
                : Image.asset(
              assetPath,
              fit: BoxFit.contain,
              height: 100,
            ),
            const SizedBox(height: 18),
            Text(
              text,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 12,
                letterSpacing: -0.41,
                height: 1.8,
                color: const Color(0xFF7F7F7F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
