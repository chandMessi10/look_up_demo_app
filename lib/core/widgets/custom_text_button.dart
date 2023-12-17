import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.buttonIcon,
    required this.buttonLabel,
    required this.buttonFunction,
    this.isSelected,
  }) : super(key: key);

  final IconData buttonIcon;
  final String buttonLabel;
  final VoidCallback buttonFunction;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonFunction,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
            isSelected != null && isSelected!
                ? Theme.of(context).highlightColor
                : Colors.transparent),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              alignment: Alignment.center,
              child: Icon(buttonIcon),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                buttonLabel,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}