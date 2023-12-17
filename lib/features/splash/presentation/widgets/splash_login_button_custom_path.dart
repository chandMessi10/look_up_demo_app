import 'package:flutter/material.dart';

class LogInButtonCustomPath extends CustomClipper<Path> {
  final double value;

  LogInButtonCustomPath(this.value);

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
      Rect.fromCenter(
        center: Offset(size.width / 2, 0),
        width: size.width * 1.2 * value,
        height: size.height * 1.2 * value,
      ),
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
