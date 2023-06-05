import 'package:get/get.dart';

import '../modules/all_rooms/bindings/all_rooms_binding.dart';
import '../modules/all_rooms/views/all_rooms_view.dart';
import '../modules/bottom_nav/bindings/bottom_nav_binding.dart';
import '../modules/bottom_nav/views/bottom_nav_view.dart';
import '../modules/detail_item/bindings/detail_item_binding.dart';
import '../modules/detail_item/views/detail_item_view.dart';
import '../modules/detail_room/bindings/detail_room_binding.dart';
import '../modules/detail_room/views/detail_room_view.dart';
import '../modules/device_active/bindings/device_active_binding.dart';
import '../modules/device_active/views/device_active_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/smart_mode/bindings/smart_mode_binding.dart';
import '../modules/smart_mode/views/smart_mode_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/usage/bindings/usage_binding.dart';
import '../modules/usage/views/usage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SMART_MODE,
      page: () => const SmartModeView(),
      binding: SmartModeBinding(),
    ),
    GetPage(
      name: _Paths.USAGE,
      page: () => const UsageView(),
      binding: UsageBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_ROOM,
      page: () => const DetailRoomView(),
      binding: DetailRoomBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_ITEM,
      page: () => const DetailItemView(),
      binding: DetailItemBinding(),
    ),
    GetPage(
      name: _Paths.DEVICE_ACTIVE,
      page: () => const DeviceActiveView(),
      binding: DeviceActiveBinding(),
    ),
    GetPage(
      name: _Paths.ALL_ROOMS,
      page: () => const AllRoomsView(),
      binding: AllRoomsBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAV,
      page: () => const BottomNavView(),
      binding: BottomNavBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
