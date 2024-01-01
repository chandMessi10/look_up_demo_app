import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:video_player/video_player.dart';

class SignUpConfettiWidget extends StatefulWidget {
  const SignUpConfettiWidget({super.key});

  @override
  State<SignUpConfettiWidget> createState() => _SignUpConfettiWidgetState();
}

class _SignUpConfettiWidgetState extends State<SignUpConfettiWidget> {
  late ConfettiController _controllerController;
  bool isVideoUrlLoading = true;
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _getVideoUrl();
    _controllerController = ConfettiController(
      duration: const Duration(seconds: 2),
    );
    _controllerController.play();
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _controllerController.dispose();
    super.dispose();
  }

  Future<void> _getVideoUrl() async {
    Reference videoReference =
        FirebaseStorage.instance.ref('videos').child('happy_new_year.mp4');
    String downloadUrl = await videoReference.getDownloadURL();
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(downloadUrl))
          ..initialize().then((_) {
            if (_videoPlayerController.value.isInitialized) {
              setState(() {
                isVideoUrlLoading = false;
              });
            }
          });
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
                  SizedBox(
                    height: 120,
                    width: 150,
                    child: isVideoUrlLoading
                        ? const Center(child: CircularProgressIndicator())
                        : VideoPlayer(_videoPlayerController),
                  ),
                  const SizedBox(height: 16),
                  const Text('Sign Up Successful'),
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
