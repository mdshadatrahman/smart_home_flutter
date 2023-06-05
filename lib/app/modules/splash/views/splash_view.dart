import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:smart_home/app/constants/colors.dart';
import 'package:smart_home/gen/assets.gen.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background image
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: SvgPicture.asset(
              Assets.pictures.svg.splashScreen,
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'smartme',
                      style: TextStyle(
                        color: AppColors.surface2,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  const Text(
                    'Welcome Home',
                    style: TextStyle(
                      color: AppColors.surface2,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "no matter how far you go,\nhome will be your destination to return to. \nlet's make your home comfortable",
                    style: TextStyle(
                      color: AppColors.surface2,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 70),
                  Image.asset(Assets.pictures.png.splashForegroundImage.path),
                  const SizedBox(height: 70),
                  //Button
                  InkWell(
                    onTap: () => controller.goNextPage(),
                    child: Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColors.main,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SvgPicture.asset(Assets.pictures.svg.arrowBar)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
