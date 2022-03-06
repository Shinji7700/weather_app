import 'package:flutter/material.dart';

import '../models/weather_model.dart';

class AdditionalInformationWidget extends StatelessWidget {
  const AdditionalInformationWidget({required this.weatherModel, Key? key})
      : super(key: key);
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Additional Information',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 150,
          child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 5,
              padding: const EdgeInsets.only(left: 50),
              children: [
                Wrap(
                  spacing: 30,
                  children: [
                    const Text('Min Temp'),
                    Text('${weatherModel.minTemp}\u00b0C')
                  ],
                ),
                Wrap(
                  spacing: 30,
                  children: [
                    const Text('Max Temp'),
                    Text('${weatherModel.maxTemp}\u00b0C')
                  ],
                ),
                Wrap(
                  spacing: 55,
                  children: [const Text('Wind'), Text('${weatherModel.wind}')],
                ),
                Wrap(
                  spacing: 37,
                  children: [
                    const Text('Humidity'),
                    Text('${weatherModel.humidity}')
                  ],
                ),
                Wrap(
                  spacing: 30,
                  children: [
                    const Text('Pressure'),
                    Text('${weatherModel.pressure}')
                  ],
                ),
                Wrap(
                  spacing: 30,
                  children: [
                    const Text('Feels Like'),
                    Text('${weatherModel.feelsLike}')
                  ],
                ),
              ]),
        )
      ],
    );
  }
}
