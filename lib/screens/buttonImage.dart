import 'package:flutter/material.dart';

class ButtonImage extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  ButtonImage({
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Image.asset(imagePath),
    );
  }
}
