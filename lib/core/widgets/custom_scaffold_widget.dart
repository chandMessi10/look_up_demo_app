import 'package:flutter/material.dart';

class CustomScaffoldWidget extends StatelessWidget {
  const CustomScaffoldWidget({
    required this.scaffoldBody,
    this.canPopScreen,
    this.appBar,
    this.popFunction,
    this.bottomNavigationWidget,
    super.key,
  });

  final Widget scaffoldBody;
  final AppBar? appBar;
  final bool? canPopScreen;
  final void Function(bool)? popFunction;
  final Widget? bottomNavigationWidget;

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
          appBar: appBar,
          body: scaffoldBody,
          bottomNavigationBar: bottomNavigationWidget,
        ),
      ),
    );
  }
}
