import 'package:coffee_city/presentation/resource/app_string.dart';

class Time {
  int getCurrentTimeByHour() {
    var dateTime = DateTime.now();
    var parse = dateTime.hour;
    return parse;
  }

  String getStringToTime() {
    final int time = getCurrentTimeByHour();

    if(time >= 5 && time <= 12){
      return HomeAppString.goodMorning;
    }
    else if(time >= 12 && time <= 18){
      return HomeAppString.goodAfternoon;
    }
    else if(time >= 18 && time <= 22){
      return HomeAppString.goodEvening;
    }
    else{
      return HomeAppString.goodEvening;
    }
  }
}
