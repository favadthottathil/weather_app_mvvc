import 'dart:convert';

import 'package:weather_app_mvvm/Data/Network/base_api_service.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app_mvvm/Data/app_exception.dart';

class ApiServices extends BaseApiService {
  dynamic jsonReponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var jsonReponse = jsonDecode(response.body);

        return jsonReponse;

      case 400:
        var jsonResponse = jsonDecode(response.body);

        return jsonResponse;

      default:
        throw FetchDataException(
          'Error While Communicating ${response.statusCode}',
        );
    }
  }

  @override
  Future getApi(String url) async {
    dynamic jsonData;

    try {
      var response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));

      jsonData = jsonReponse(response);
    } on RequestTimeOut {
      throw RequestTimeOut('Request Timeout');
    } on InternetException {
      throw InternetException('No internet');
    }

    return jsonData;
  }
}
