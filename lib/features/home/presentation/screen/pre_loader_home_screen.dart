import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/utils/app_constants.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';
import 'package:look_up_demo_app/core/widgets/custom_scaffold_widget.dart';
import 'package:look_up_demo_app/features/home/presentation/widgets/interest_option_widget.dart';
import 'package:look_up_demo_app/features/home/presentation/widgets/pre_loader_home_custom_path.dart';

class PreLoaderHomeScreen extends StatefulWidget {
  const PreLoaderHomeScreen({super.key});

  @override
  State<PreLoaderHomeScreen> createState() => _PreLoaderHomeScreenState();
}

class _PreLoaderHomeScreenState extends State<PreLoaderHomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomScaffoldWidget(
      canPopScreen: false,
      scaffoldBody: Stack(
        children: [
          Container(
            height: size.height,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.028),
              child: Column(
                children: [
                  const Spacer(),
                  SizedBox(
                    height: size.height * 0.05,
                    width: size.width * 0.09,
                    child: Image.asset(
                      AppConstants.hiPath,
                      height: size.height * 0.09,
                      width: size.width * 0.09,
                      alignment: Alignment.center,
                    ),
                  ),
                  const Text(
                    'Is there something specific you want to see today.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  sizedBoxHeight(size.height * 0.45),
                  const Spacer(),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (BuildContext context, Widget? child) {
                return ClipPath(
                  clipper: PreloaderHomeScreenCustomPath(
                    value: _animationController.value,
                  ),
                  child: Container(
                    height: size.height / 1.7,
                    width: double.infinity,
                    color: Colors.white,
                    child: InterestOptionWidget(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
}
