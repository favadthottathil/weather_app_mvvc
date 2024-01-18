import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_mvvm/Resources/Colors/colors.dart';
import 'package:weather_app_mvvm/View/Home/Components/app_bar.dart';
import 'package:weather_app_mvvm/View/Home/Components/container_list.dart';
import 'package:weather_app_mvvm/View/Home/Components/hours_list.dart';
import 'package:weather_app_mvvm/View/Home/Components/info_card.dart';
import 'package:weather_app_mvvm/View/Home/Components/loacation.dart';
import 'package:weather_app_mvvm/View/Next-Days/next_14_days.dart';
import 'package:weather_app_mvvm/ViewModel/Controllers/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeContoller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const CustomAppBar(),
                const SizedBox(height: 20),
                Location(),
                Hero(
                    tag: 'TAG',
                    child: Material(
                      color: Colors.transparent,
                      child: InfoCard(),
                    )),
                ContainerList(),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Get.to(
                     NextDays(),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Next 14 Days >',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                HoursList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
