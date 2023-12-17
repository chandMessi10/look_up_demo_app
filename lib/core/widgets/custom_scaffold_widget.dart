import 'package:flutter/material.dart';

class CustomScaffoldWidget extends StatelessWidget {
  const CustomScaffoldWidget({
    required this.scaffoldBody,
    this.canPopScreen,
    this.popFunction,
    super.key,
  });

  final Widget scaffoldBody;
  final bool? canPopScreen;
  final void Function(bool)? popFunction;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canPopScreen ?? true,
      onPopInvoked: popFunction,
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          body: scaffoldBody,
        ),
      ),
    );
  }
}
