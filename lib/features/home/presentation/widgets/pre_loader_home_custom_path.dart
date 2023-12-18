import 'package:flutter/material.dart';

class PreloaderHomeScreenCustomPath extends CustomClipper<Path> {
  final double value;

  PreloaderHomeScreenCustomPath({
    required this.value,
  });

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height),
        width: size.width * 2 * value,
        height: size.height * 2 * value,
      ),
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
