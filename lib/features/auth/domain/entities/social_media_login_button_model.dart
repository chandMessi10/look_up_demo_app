import 'package:flutter/foundation.dart';

class SocialMediaLoginButtonModel {
  final String socialMediaIconPath;
  final VoidCallback buttonFunction;

  SocialMediaLoginButtonModel({
    required this.socialMediaIconPath,
    required this.buttonFunction,
  });
}
