import 'package:get/get.dart';
import 'package:weather_app_mvvm/ViewModel/Controllers/home_controller.dart';

class SplashServices {
  static void getApiData() {
    final controller = Get.put(HomeController());

    controller.getData();
  }
}
