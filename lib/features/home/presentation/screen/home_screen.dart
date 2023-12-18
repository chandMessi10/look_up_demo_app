import 'package:flutter/material.dart';
import 'package:look_up_demo_app/features/home/presentation/widgets/home_screen_entry_custom_path.dart';
import 'package:look_up_demo_app/core/widgets/custom_scaffold_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        /// Animated Container
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: ColoredBox(
            color: Theme.of(context).primaryColor,
          ),
        ),
        Positioned(
          // top: 50,
          bottom: 0,
          left: 0,
          right: 0,
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (BuildContext context, Widget? child) {
              return ClipPath(
                clipper: HomeScreenEntryCustomPath(
                  value: _animationController.value,
                ),
                child: Container(
                  height: size.height,
                  width: double.infinity,
                  child: CustomScaffoldWidget(
                    scaffoldBody: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'home screen',
                              style: TextStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
}
