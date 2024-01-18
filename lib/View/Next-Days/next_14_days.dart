import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_mvvm/Resources/Colors/colors.dart';
import 'package:weather_app_mvvm/View/Next-Days/Components/app_bar.dart';
import 'package:weather_app_mvvm/View/Next-Days/Components/days_list.dart';
import 'package:weather_app_mvvm/ViewModel/Controllers/days_controller.dart';
import 'package:weather_app_mvvm/ViewModel/Controllers/home_controller.dart';

class NextDays extends StatelessWidget {
  NextDays({super.key});

  final homeController = Get.put(HomeController());

  final controller = Get.put(DaysController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 1,
                  child: SizedBox(
                    height: size.height / 1.8,
                    width: size.width,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const CustomAppBar(),
                        const SizedBox(height: 20),
                        DaysList(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
