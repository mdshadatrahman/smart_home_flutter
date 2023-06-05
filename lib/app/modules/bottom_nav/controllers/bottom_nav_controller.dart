import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:smart_home/app/constants/colors.dart';
import 'package:smart_home/app/modules/home/views/home_view.dart';
import 'package:smart_home/app/modules/profile/views/profile_view.dart';
import 'package:smart_home/app/modules/smart_mode/views/smart_mode_view.dart';
import 'package:smart_home/app/modules/usage/views/usage_view.dart';
import 'package:smart_home/gen/assets.gen.dart';

class BottomNavController extends GetxController {
  Rx<PersistentTabController> navController = PersistentTabController(initialIndex: 0).obs;

  List<Widget> buildScreens() {
    return const [
      HomeView(),
      SmartModeView(),
      UsageView(),
      ProfileView(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            navController.value.index == 0 ? Assets.pictures.svg.home1 : Assets.pictures.svg.home0,
          ),
        ),
        title: ("Home"),
        activeColorSecondary: AppColors.main2,
        textStyle: const TextStyle(color: AppColors.main2, fontWeight: FontWeight.bold),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
        inactiveColorSecondary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            navController.value.index == 1 ? Assets.pictures.svg.smart1 : Assets.pictures.svg.smart0,
          ),
        ),
        title: ("Smart"),
        activeColorSecondary: AppColors.main2,
        textStyle: const TextStyle(color: AppColors.main2, fontWeight: FontWeight.bold),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            navController.value.index == 2 ? Assets.pictures.svg.usage1 : Assets.pictures.svg.usage0,
          ),
        ),
        title: ("Usage"),
        activeColorSecondary: AppColors.main2,
        textStyle: const TextStyle(color: AppColors.main2, fontWeight: FontWeight.bold),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            navController.value.index == 3 ? Assets.pictures.svg.profile1 : Assets.pictures.svg.profile0,
          ),
        ),
        title: ("Profile"),
        activeColorSecondary: AppColors.main2,
        textStyle: const TextStyle(color: AppColors.main2, fontWeight: FontWeight.bold),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.white,
      ),
    ];
  }
}
