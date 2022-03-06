class WeatherModel {
  WeatherModel({
    required this.temp,
    required this.minTemp,
    required this.maxTemp,
    required this.wind,
    required this.pressure,
    required this.humidity,
    required this.feelsLike,
  });
  double temp = 0.0;
  double minTemp = 0.0;
  double maxTemp = 0.0;
  double wind = 0.0;
  int pressure = 0;
  int humidity = 0;
  double feelsLike = 0.0;

  WeatherModel.fromJson(Map<String, dynamic> json) {
    temp = json['main']['temp'];
    minTemp = json['main']['temp_min'];
    maxTemp = json['main']['temp_max'];
    wind = json['wind']['speed'];
    pressure = json['main']['pressure'];
    humidity = json['main']['humidity'];
    feelsLike = json['main']['feels_like'];
  }
}
