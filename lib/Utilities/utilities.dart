import 'package:intl/intl.dart';

class Utilities {
   Map<dynamic, String> imageMap = {
    'Partially cloud': 'Assets/Images/nightRain.png',
    'Overcast': 'Assets/Images/sunSlowRain.png',
    'Clear': 'Assets/Images/wind.png',
    'null': 'Assets/Images/nightStatRain.png'
  };

  static String formatedDate(DateTime date) {
    String formattedDate = DateFormat('EEEE d MMM').format(date);

    return formattedDate;
  }

  static String extractDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('d').format(dateTime);
    return formattedDate;
  }

  static String extractDay(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('EEEE').format(dateTime);
    String abbreviatedDay = formattedDate.substring(0, 3);
    return abbreviatedDay;
  }

  static String formateTime(String time) {
    DateFormat dateFormat = DateFormat('hh:mm a');

    DateTime dateTime = DateTime.parse('2023-08-08T$time');

    String timeIn12HourFormat = dateFormat.format(dateTime);

    return timeIn12HourFormat;
  }

  static String currentTime() {
    DateFormat dateFormat = DateFormat('hh:mm a');
    DateTime now = DateTime.now();

    String time = dateFormat.format(now);

    return time;
  }

  static String formatTimeWithoutAmAndPm(String time) {
    DateFormat dateFormat = DateFormat('hh:mm');

    DateTime dateTime = DateTime.parse('2023-08-08T$time');

    String timeIn24HourFormat = dateFormat.format(dateTime);

    return timeIn24HourFormat;
  }

  static bool checkTime(String time) {
    DateFormat dateFormat = DateFormat('hh a');
    DateTime dateTime = DateTime.parse('2023-08-08T$time');
    DateTime now = DateTime.now();

    return dateFormat.format(dateTime) == dateFormat.format(now);
  }
}
