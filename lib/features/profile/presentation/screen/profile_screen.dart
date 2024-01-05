import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/widgets/custom_scaffold_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      scaffoldBody: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}
