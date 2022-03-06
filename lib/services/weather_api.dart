import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/weather_details/models/weather_model.dart';

class WeatherApi {
  Future<WeatherModel> getCurrentWeather(double lat, double long) async {
    var url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=1e445dee0e8e6cd79bdd846ab5d46ebb&units=metric");
    var response = await http.get(url);

    //To convert the response string into json format
    var body = jsonDecode(response.body);

    //To pass the resultant json body into .fromJson method
    return WeatherModel.fromJson(body);
  }
}
