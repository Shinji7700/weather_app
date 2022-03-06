class WeatherModel {
  WeatherModel({
    this.temp,
    this.minTemp,
    this.maxTemp,
    this.wind,
    this.pressure,
    this.humidity,
    this.feelsLike,
  });
  double? temp;
  double? minTemp;
  double? maxTemp;
  double? wind;
  int? pressure;
  int? humidity;
  double? feelsLike;

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
