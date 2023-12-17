import 'package:flutter/material.dart';

class BackgroundCustomPath extends CustomClipper<Path> {
  final double value;
  final double? desiredDx;
  final double? desiredDy;

  BackgroundCustomPath({
    required this.value,
    this.desiredDx,
    this.desiredDy,
  });

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
      Rect.fromCenter(
        center: Offset(desiredDx ?? size.width / 2, desiredDy ?? 0),
        width: size.width * 2.3 * value,
        height: size.height * 2.3 * value,
      ),
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
