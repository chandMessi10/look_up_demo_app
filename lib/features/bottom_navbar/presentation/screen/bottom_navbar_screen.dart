import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:look_up_demo_app/features/cart/presentation/screen/cart_screen.dart';
import 'package:look_up_demo_app/features/home/presentation/screen/home_screen.dart';
import 'package:look_up_demo_app/features/profile/presentation/screen/profile_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  late PersistentTabController _persistentTabController;

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.house_fill),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.cart_fill),
        title: ("Cart"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.profile_circled),
        title: ("Profile"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  void initState() {
    _persistentTabController = PersistentTabController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: PersistentTabView(
        context,
        controller: _persistentTabController,
        screens: _buildScreens(),
        items: _navBarsItems(),
      ),
    );
  }

  @override
  void dispose() {
    _persistentTabController.dispose();
    super.dispose();
  }
}
