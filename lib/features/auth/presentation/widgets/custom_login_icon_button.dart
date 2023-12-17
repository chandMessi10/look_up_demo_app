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
    final size = MediaQuery.of(context).size;
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
          height: size.height * 0.4,
          width: size.width * 0.12,
          child: SvgPicture.asset(
            iconAssetPath,
            height: size.height * 0.025,
            width: size.width * 0.025,
          ),
        ),
      ),
    );
  }
}
