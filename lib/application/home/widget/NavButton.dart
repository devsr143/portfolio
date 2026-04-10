

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
      child: AnimatedScale(
        scale: _isHovered ? 1.1 : 1.0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        child: TextButton(
          style: TextButton.styleFrom(
            overlayColor: const Color.fromRGBO(218, 94, 170, 0.2),
          ),
          onPressed: widget.onPressed,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                style: TextStyle(
                  color: _isHovered
                      ? const Color.fromRGBO(218, 94, 170, 1.0)
                      : Colors.white54,
                  fontSize: _isHovered ? 17 : 14,
                  fontWeight: FontWeight.bold,
                ),
                child: Text(widget.title),
              ),
              const SizedBox(height: 4),
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                height: 2,
                width: _isHovered ? 24 : 0,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(218, 94, 170, 1.0),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}