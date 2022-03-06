import 'package:flutter/material.dart';
import 'package:weather_app/weather_details/models/weather_model.dart';

class BasicInformationWidget extends StatelessWidget {
  const BasicInformationWidget({required this.weatherModel, Key? key})
      : super(key: key);
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.wb_sunny,
          color: Colors.orange,
          size: 64,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '${weatherModel.temp}\u00b0C',
          style: const TextStyle(fontSize: 46),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Chennai',
          style: TextStyle(color: Color(0xff5a5a5a)),
        ),
      ],
    );
  }
}
