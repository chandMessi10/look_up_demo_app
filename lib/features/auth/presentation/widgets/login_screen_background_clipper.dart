import 'package:flutter/material.dart';

class LoginScreenBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height / 1.2)
      ..quadraticBezierTo(
        size.width / 1.85, // Control point x
        size.height / 1.07, // Control point y
        size.width, // End point x
        size.height / 1.2, // End point y
      )
      ..lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
