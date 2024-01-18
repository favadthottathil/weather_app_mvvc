import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_mvvm/Resources/Images/image_assets.dart';
import 'package:weather_app_mvvm/View/Home/Components/small_container.dart';
import 'package:weather_app_mvvm/ViewModel/Controllers/days_controller.dart';
import 'package:weather_app_mvvm/ViewModel/Controllers/home_controller.dart';

class SmallContainerList extends StatelessWidget {
  SmallContainerList({super.key});

  final homeController = Get.put(HomeController());

  final controller = Get.put(DaysController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Obx(() => SmallContainer(
              text: '${controller.day.value.precipprob.toInt()}%',
              image: ImageAssets.heavyRain,
              color: Colors.white38,
              textColor: Colors.white,
            )),
        const Spacer(),
        Obx(() => SmallContainer(
              text: '${controller.day.value.windspeed.toInt()}km/h',
              image: ImageAssets.wind,
              color: Colors.white38,
              textColor: Colors.white,
            )),
        const Spacer(),
        Obx(() => SmallContainer(
              text: '${controller.day.value.humidity.toInt()}%',
              image: ImageAssets.sun,
              color: Colors.white38,
              textColor: Colors.white,
            )),
        const Spacer(),
      ],
    );
  }
}
