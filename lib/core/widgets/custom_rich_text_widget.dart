import 'package:flutter/material.dart';

class CustomRichTextWidget extends StatelessWidget {
  const CustomRichTextWidget({
    required this.primaryText,
    required this.secondaryText,
    this.desiredPrimaryTextStyle,
    this.desiredSecondaryTextStyle,
    super.key,
  });

  final String primaryText;
  final String secondaryText;
  final TextStyle? desiredPrimaryTextStyle;
  final TextStyle? desiredSecondaryTextStyle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: size.width * 0.04,
        horizontal: size.height * 0.08,
      ),
      child: RichText(
        text: TextSpan(
          text: primaryText,
          style: desiredPrimaryTextStyle ??
              const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
              ),
          children: [
            TextSpan(
              text: secondaryText,
              style: desiredSecondaryTextStyle ??
                  TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
