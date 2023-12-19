import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';

class HomeTabBarItemWidget extends StatelessWidget {
  const HomeTabBarItemWidget({
    required this.iconAssetPath,
    required this.label,
    super.key,
  });

  final String iconAssetPath;
  final String label;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        /// change tab
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            sizedBoxHeight(
              size.height * 0.004,
            ),
            SvgPicture.asset(
              iconAssetPath,
              height: size.height * 0.04,
            ),
            sizedBoxHeight(
              size.height * 0.0025,
            ),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFFA6A3A3),
              ),
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              textScaler: TextScaler.noScaling,
            ),
            sizedBoxHeight(
              size.height * 0.004,
            ),
          ],
        ),
      ),
    );
  }
}
