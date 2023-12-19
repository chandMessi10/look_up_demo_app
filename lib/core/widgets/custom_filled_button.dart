import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    required this.buttonLabel,
    required this.buttonOnPressed,
    this.isLoading,
    this.desiredButtonShape,
    this.desiredBackgroundColor,
    this.desiredTextColor,
    Key? key,
  }) : super(key: key);

  final String buttonLabel;
  final VoidCallback buttonOnPressed;
  final bool? isLoading;
  final Color? desiredBackgroundColor;
  final Color? desiredTextColor;
  final MaterialStateProperty<OutlinedBorder?>? desiredButtonShape;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: buttonOnPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(10),
        backgroundColor: MaterialStateProperty.all<Color>(
          desiredBackgroundColor ?? Theme.of(context).colorScheme.primary,
        ),
        shape: desiredButtonShape ??
            MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
        ),
      ),
      child: isLoading != null && isLoading!
          ? const CircularProgressIndicator(
              color: Colors.cyanAccent,
            )
          : Text(
              buttonLabel,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    color: desiredTextColor ?? Colors.white,
                  ),
            ),
    );
  }
}
