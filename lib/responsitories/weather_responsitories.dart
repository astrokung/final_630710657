import 'dart:convert';

import 'package:final_630710657/models/weather.dart';
import 'package:final_630710657/services/api_caller.dart';

class WeatherRespository {
  Future<List<Weather>> getWeather() async {
    try {
      var result = await ApiCaller().get('https://cpsu-test-api.herokuapp.com/api/1_2566/weather/current?city=bangkok');
      List list = jsonDecode(result);
      List<Weather> weathertList =
      list.map((item) => Weather.fromJson(item)).toList();
      return weathertList;
    } catch (e) {
      rethrow;
    }
  }

}