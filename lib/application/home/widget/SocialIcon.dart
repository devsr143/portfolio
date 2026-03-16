import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;
  final double size;
  final Color color;

  const SocialIcon({
    Key? key,
    required this.iconPath,
    required this.onTap,
    this.size = 20,
    this.color = Colors.white,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        iconPath,
        width: size,
        height: size,
        color: color,
      ),
    );
  }
}