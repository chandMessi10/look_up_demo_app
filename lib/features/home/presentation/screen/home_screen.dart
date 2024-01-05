import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:look_up_demo_app/core/utils/app_constants.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';
import 'package:look_up_demo_app/core/utils/suffle_image_list_util.dart';
import 'package:look_up_demo_app/core/widgets/custom_scaffold_widget.dart';
import 'package:look_up_demo_app/features/home/presentation/widgets/image_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomScaffoldWidget(
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
      ),
      scaffoldBody: SingleChildScrollView(
        child: Column(
          children: [
            ImageListWidget(
              title: 'Stories',
              imageList: shuffleList(AppConstants.imageList),
            ),
            sizedBoxHeight(size.height * 0.02),
            ImageListWidget(
              title: 'Trending',
              imageList: shuffleList(AppConstants.imageList),
            ),
            sizedBoxHeight(size.height * 0.02),
            ImageListWidget(
              title: 'Best workout',
              imageList: shuffleList(AppConstants.imageList),
            ),
            sizedBoxHeight(size.height * 0.02),
            ImageListWidget(
              title: 'Dancing',
              imageList: shuffleList(AppConstants.imageList),
            ),
            sizedBoxHeight(size.height * 0.02),
          ],
        ),
      ),
    );
  }
}
