import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/widgets/custom_scaffold_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      scaffoldBody: SingleChildScrollView(),
    );
  }
}
