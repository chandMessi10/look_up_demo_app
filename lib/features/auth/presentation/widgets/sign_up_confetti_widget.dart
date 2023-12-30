import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class SignUpConfettiWidget extends StatefulWidget {
  const SignUpConfettiWidget({super.key});

  @override
  State<SignUpConfettiWidget> createState() => _SignUpConfettiWidgetState();
}

class _SignUpConfettiWidgetState extends State<SignUpConfettiWidget> {
  late ConfettiController _controllerController;

  @override
  void initState() {
    _controllerController = ConfettiController(
      duration: const Duration(seconds: 2),
    );
    _controllerController.play();
    super.initState();
  }

  @override
  void dispose() {
    _controllerController.dispose();
    super.dispose();
  }

  /// A custom Path to paint stars.
  Path drawStar(Size size) {
    // Method to convert degree to radians
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            margin: const EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign Up Successful'),
                  // SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: ConfettiWidget(
            confettiController: _controllerController,
            blastDirectionality: BlastDirectionality.explosive,
            // don't specify a direction, blast randomly
            shouldLoop: true,
            // start again as soon as the animation is finished
            colors: const [
              Colors.green,
              Colors.blue,
              Colors.pink,
              Colors.orange,
              Colors.purple,
            ],
            // manually specify the colors to be used
            createParticlePath: drawStar, // define a custom shape/path.
          ),
        ),
      ],
    );
  }
}
