import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    required this.buttonLabel,
    required this.buttonOnPressed,
    this.isLoading,
    this.desiredWidth,
    this.desiredHeight,
    this.desiredButtonShape,
    this.desiredBackgroundColor,
    this.desiredTextColor,
    Key? key,
  }) : super(key: key);

  final String buttonLabel;
  final VoidCallback buttonOnPressed;
  final bool? isLoading;
  final double? desiredWidth;
  final double? desiredHeight;
  final Color? desiredBackgroundColor;
  final Color? desiredTextColor;
  final MaterialStateProperty<OutlinedBorder?>? desiredButtonShape;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
        fixedSize: MaterialStateProperty.all<Size>(
          Size(
            desiredWidth ?? size.width,
            desiredHeight ?? size.height * 0.06,
          ),
        ),
      ),
      child: isLoading != null && isLoading!
          ? const CircularProgressIndicator()
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
