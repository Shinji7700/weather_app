import 'package:flutter/material.dart';
import 'package:weather_app/services/weather_api.dart';
import 'package:weather_app/weather_details/models/weather_model.dart';

import '../widgets/additional_information_widget.dart';
import '../widgets/basic_information_widget.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  WeatherApi api = WeatherApi();
  WeatherModel weatherData = WeatherModel(
      temp: 0.0,
      minTemp: 0.0,
      maxTemp: 0.0,
      wind: 0.0,
      pressure: 0,
      humidity: 0,
      feelsLike: 0.0);

  Future<void> getWeatherData() async {
    weatherData = await api.getCurrentWeather(13.067439, 80.237617);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
          centerTitle: true,
          elevation: 0,
        ),
        body: FutureBuilder(
          future: getWeatherData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BasicInformationWidget(weatherModel: weatherData),
                  const SizedBox(
                    height: 50,
                  ),
                  AdditionalInformationWidget(weatherModel: weatherData),
                ],
              );
            }
            return const SizedBox();
          },
        ));
  }
}
