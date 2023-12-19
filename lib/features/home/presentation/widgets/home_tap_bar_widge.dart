import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/utils/app_constants.dart';
import 'package:look_up_demo_app/features/home/domain/entities/home_tab_bar_item_model.dart';
import 'package:look_up_demo_app/features/home/presentation/widgets/home_tab_bar_item_widget.dart';

class HomeTabBarWidget extends StatelessWidget {
  HomeTabBarWidget({super.key});

  final List<HomeTabBarItemModel> tabBarItems = [
    HomeTabBarItemModel(
      iconAssetPath: AppConstants.trendingIconPath,
      label: 'Trending',
    ),
    HomeTabBarItemModel(
      iconAssetPath: AppConstants.popularIconPath,
      label: 'Popular',
    ),
    HomeTabBarItemModel(
      iconAssetPath: AppConstants.latestIconPath,
      label: 'Latest',
    ),
    HomeTabBarItemModel(
      iconAssetPath: AppConstants.followingIconPath,
      label: 'Following',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 3,
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HomeTabBarItemWidget(
            iconAssetPath: tabBarItems[0].iconAssetPath,
            label: tabBarItems[0].label,
          ),
          HomeTabBarItemWidget(
            iconAssetPath: tabBarItems[1].iconAssetPath,
            label: tabBarItems[1].label,
          ),
          HomeTabBarItemWidget(
            iconAssetPath: tabBarItems[2].iconAssetPath,
            label: tabBarItems[2].label,
          ),
          HomeTabBarItemWidget(
            iconAssetPath: tabBarItems[3].iconAssetPath,
            label: tabBarItems[3].label,
          )
        ],
      ),
    );
  }
}
