import 'package:flutter/material.dart';

class CustomScaffoldWidget extends StatelessWidget {
  const CustomScaffoldWidget({
    required this.scaffoldBody,
    super.key,
  });

  final Widget scaffoldBody;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: scaffoldBody,
      ),
    );
  }
}
