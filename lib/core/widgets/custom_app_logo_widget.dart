import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';

class CustomAppLogoWidget extends StatelessWidget {
  const CustomAppLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/logo_letter/letter_L.svg',
          width: size.width * 0.05,
          height: size.height * 0.05,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
        sizedBoxWidth(size.width * 0.01),
        const AppEyeLogoWidget(),
        sizedBoxWidth(size.width * 0.01),
        SvgPicture.asset(
          'assets/logo_letter/letter_K.svg',
          width: size.width * 0.05,
          height: size.height * 0.05,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
        sizedBoxWidth(size.width * 0.025),
        SvgPicture.asset(
          'assets/logo_letter/letter_U.svg',
          width: size.width * 0.05,
          height: size.height * 0.05,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
        sizedBoxWidth(size.width * 0.01),
        SvgPicture.asset(
          'assets/logo_letter/letter_P.svg',
          width: size.width * 0.05,
          height: size.height * 0.05,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}

class AppEyeLogoWidget extends StatelessWidget {
  const AppEyeLogoWidget({
    this.isPasswordFocused,
    super.key,
  });

  final bool? isPasswordFocused;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height * 0.1,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/logo_letter/letter_O.svg',
                width: size.width * 0.05,
                height: size.height * 0.05,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
              sizedBoxWidth(size.width * 0.01),
              SvgPicture.asset(
                'assets/logo_letter/letter_O.svg',
                width: size.width * 0.05,
                height: size.height * 0.05,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.1,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const EyeBallImage(),
              sizedBoxWidth(size.width * 0.075),
              const EyeBallImage(),
            ],
          ),
        ),
        Visibility(
          visible: isPasswordFocused ?? false,
          child: SizedBox(
            height: size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/logo_letter/fxemoji_hands.svg',
                  width: size.width * 0.25,
                  height: size.height * 0.11,
                  colorFilter: const ColorFilter.mode(
                    Color(0xFFECECEC),
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class EyeBallImage extends StatelessWidget {
  const EyeBallImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(
          'assets/logo_letter/eye_foreground.svg',
          width: size.width * 0.018,
          height: size.height * 0.018,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
        SvgPicture.asset(
          'assets/logo_letter/eye_background.svg',
          width: size.width * 0.011,
          height: size.height * 0.011,
        ),
      ],
    );
  }
}
