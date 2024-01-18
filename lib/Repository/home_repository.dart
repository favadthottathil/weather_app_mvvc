import 'package:weather_app_mvvm/Data/Network/api_sevices.dart';
import 'package:weather_app_mvvm/Resources/AppUrls/app_urls.dart';

class HomeRepository {
  static Future<dynamic> hitApi() async {
    var response = await ApiServices().getApi(AppUrls.url);

    return response;
  }
}
