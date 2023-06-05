import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:smart_home/app/constants/colors.dart';
import 'package:smart_home/gen/assets.gen.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TOP SECTION
          Container(
            decoration: const BoxDecoration(
              color: AppColors.main2,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  Assets.pictures.png.cloudSun.path,
                  fit: BoxFit.values[5],
                ),
                SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //Name and notification
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Good Morning,',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Kimberly Mastrangelo',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(Assets.pictures.svg.notification),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const WeatherReport(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherReport extends StatelessWidget {
  const WeatherReport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        decoration: BoxDecoration(
          color: AppColors.surface2,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(Assets.pictures.svg.weather),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'May 16, 2023 10:05 am',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Cloudy',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Jakarta, Indonesia',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                //Temperature
                const Text(
                  '19°C',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Horizontal Bar
            Container(height: 1, color: Colors.grey),

            const SizedBox(height: 10),

            //Humidity, visibility, wind

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Parameter(
                  title: 'Humidity',
                  svgPath: Assets.pictures.svg.humadity,
                  value: '80%',
                ),
                Parameter(
                  title: 'Visibility',
                  svgPath: Assets.pictures.svg.visibility,
                  value: '7km',
                ),
                Parameter(
                  title: 'NE Wind',
                  svgPath: Assets.pictures.svg.wind,
                  value: '3km',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Parameter extends StatelessWidget {
  const Parameter({
    super.key,
    required this.title,
    required this.svgPath,
    required this.value,
  });

  final String title;
  final String svgPath;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (Get.width - 100) / 3,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(svgPath),
              const SizedBox(width: 10),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Text(
            title,
            style: const TextStyle(
              letterSpacing: 0.8,
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
