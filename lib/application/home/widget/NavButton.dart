
import 'package:flutter/material.dart';

class NavButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;

  const NavButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: TextButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.title,
          style: TextStyle(
            color: _isHovered ? Color.fromRGBO(218,94,170,1.000) : Colors.white54,
            fontSize: _isHovered ? 17 : 14,
            fontWeight: FontWeight.bold,
            decoration: _isHovered ? TextDecoration.underline : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}