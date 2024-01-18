import 'package:flutter/material.dart';
import 'package:weather_app_mvvm/Resources/Colors/colors.dart';
import 'package:weather_app_mvvm/Resources/Images/image_assets.dart';
import 'package:weather_app_mvvm/ViewModel/Services/Splash%20Screen/splash_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    SplashServices.getApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Image.asset(
            ImageAssets.nightStarRain,
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
