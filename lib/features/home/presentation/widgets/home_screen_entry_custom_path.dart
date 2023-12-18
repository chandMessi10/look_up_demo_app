import 'package:flutter/material.dart';

class HomeScreenEntryCustomPath extends CustomClipper<Path> {
  final double value;

  HomeScreenEntryCustomPath({
    required this.value,
  });

  @override
  Path getClip(Size size) {
    Path path = Path();
    double rectangleHeight = size.height * value;
    path.moveTo(size.width / 2 - size.width * 0.5, size.height);
    path.lineTo(size.width / 2 + size.width * 0.5, size.height);
    path.lineTo(
      size.width / 2 + size.width * 0.5,
      size.height - rectangleHeight,
    );
    path.lineTo(
      size.width / 2 - size.width * 0.5,
      size.height - rectangleHeight,
    );
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
