import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaLoginButtonWidget extends StatelessWidget {
  const SocialMediaLoginButtonWidget({
    required this.onTapFunction,
    required this.iconAssetPath,
    super.key,
  });

  final VoidCallback onTapFunction;
  final String iconAssetPath;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: onTapFunction,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          alignment: Alignment.center,
          height: 40,
          width: 40,
          child: SvgPicture.asset(
            iconAssetPath,
            height: 25,
            width: 25,
          ),
        ),
      ),
    );
  }
}
