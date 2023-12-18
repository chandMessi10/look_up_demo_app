import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/utils/constants.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';
import 'package:look_up_demo_app/core/utils/suffle_image_list_util.dart';
import 'package:look_up_demo_app/core/widgets/custom_scaffold_widget.dart';
import 'package:look_up_demo_app/features/home/presentation/widgets/home_screen_entry_custom_path.dart';
import 'package:look_up_demo_app/features/home/presentation/widgets/image_list_widget.dart';

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
                child: SizedBox(
                  height: size.height,
                  width: double.infinity,
                  child: SafeArea(
                    child: CustomScaffoldWidget(
                      appBar: AppBar(
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      scaffoldBody: Column(
                        children: [
                          Container(
                            height: size.height * 0.1,
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Theme.of(context).primaryColor,
                                        height: size.height * 0.05,
                                        width: double.infinity,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.white,
                                        height: size.height * 0.05,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  sizedBoxHeight(size.height * 0.01),
                                  ImageListWidget(
                                    title: 'Stories',
                                    imageList:
                                        shuffleList(AppConstants.imageList),
                                  ),
                                  sizedBoxHeight(size.height * 0.02),
                                  ImageListWidget(
                                    title: 'Trending',
                                    imageList:
                                        shuffleList(AppConstants.imageList),
                                  ),
                                  sizedBoxHeight(size.height * 0.02),
                                  ImageListWidget(
                                    title: 'Best workout',
                                    imageList:
                                        shuffleList(AppConstants.imageList),
                                  ),
                                  sizedBoxHeight(size.height * 0.02),
                                  ImageListWidget(
                                    title: 'Dancing',
                                    imageList:
                                        shuffleList(AppConstants.imageList),
                                  ),
                                  sizedBoxHeight(size.height * 0.02),
                                ],
                              ),
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
