import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:look_up_demo_app/core/utils/app_constants.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';
import 'package:look_up_demo_app/core/utils/suffle_image_list_util.dart';
import 'package:look_up_demo_app/core/widgets/custom_scaffold_widget.dart';
import 'package:look_up_demo_app/features/home/presentation/widgets/home_screen_entry_custom_path.dart';
import 'package:look_up_demo_app/features/home/presentation/widgets/home_tap_bar_widge.dart';
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
      duration: const Duration(milliseconds: 1500),
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
                        leading: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.038,
                          ),
                          child: SvgPicture.asset(
                            AppConstants.tableMenuIconPath,
                            height: size.height * 0.01,
                            width: size.width * 0.01,
                          ),
                        ),
                        centerTitle: true,
                        title: SvgPicture.asset(
                          AppConstants.appLogoPath,
                          height: size.height * 0.035,
                        ),
                        actions: [
                          SvgPicture.asset(
                            AppConstants.qrScanIconPath,
                          ),
                          sizedBoxWidth(size.width * 0.05),
                        ],
                      ),
                      scaffoldBody: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.18,
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Theme.of(context).primaryColor,
                                        height: size.height * 0.1,
                                        width: double.infinity,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.white,
                                        height: size.height * 0.1,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.05,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: size.height * 0.04,
                                        width: size.width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.white,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          vertical: size.height * 0.006,
                                          horizontal: size.width * 0.02,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              AppConstants.searchIconPath,
                                              height: size.height * 0.016,
                                              width: size.width * 0.016,
                                            ),
                                            sizedBoxWidth(size.width * 0.015),
                                            const Expanded(
                                              child: Text(
                                                'Search and look up your favourites',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFFC3BFBF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      sizedBoxHeight(size.height * 0.01),
                                      SizedBox(
                                        width: size.width,
                                        height: size.height * 0.1,
                                        child: HomeTabBarWidget(),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
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
