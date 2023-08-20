import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/weather/presentation/widgets/weather_descrep.dart';

import '../controllers/weather_cubit/weather_cubit.dart';
import 'country_text.dart';
import 'degree.dart';
import 'search_field.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(

      builder: (context, state) {
        final weatherCubit = context.read<WeatherCubit>();
        final weather = weatherCubit.weather;

        return Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                _getWeatherBackGround(weather.main),
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 16,
                right: 16,
                bottom: 20,
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SearchField(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    CountryText(country: weather.countryName),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                    ),
                    Degree(
                      degree: (weather.temp - 274.15).floor().toString(),
                    ),
                    WeatherDescreption(
                      descrepthion: weather.description,
                      weatherIcon: _getWeatherIcon(weather.main),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  IconData _getWeatherIcon(String weatherMain) {
    switch (weatherMain) {
      case 'Thunderstorm':
        return Icons.thunderstorm;
      case 'Drizzle':
        return Icons.waterfall_chart_sharp;
      case 'Rain':
        return Icons.water_drop;
      case 'Snow':
        return Icons.cloudy_snowing;
      case 'Mist':
        return Icons.landslide;
      case 'Smoke':
        return Icons.storm;
      case 'Haze':
        return Icons.tornado;
      case 'Dust':
        return Icons.landslide;
      case 'Clear':
        return Icons.light_mode;
      default:
        return Icons.cloud;
    }
  }

  String _getWeatherBackGround(String weatherMain) {
    switch (weatherMain) {
      case 'Thunderstorm':
        return "https://img.freepik.com/premium-photo/lightning-bolt-thunder-generative-ai-illustration_268722-1825.jpg?size=626&ext=jpg&ga=GA1.2.1630149759.1687257850&semt=ais";
      case 'Drizzle':
        return 'https://img.freepik.com/free-vector/cloud-with-falling-rain-background_1017-32364.jpg?size=626&ext=jpg&ga=GA1.1.1630149759.1687257850&semt=ais';
      case 'Rain':
        return 'https://img.freepik.com/free-vector/scene-with-rainfall-field_1308-73940.jpg?size=626&ext=jpg&ga=GA1.2.1630149759.1687257850&semt=ais';
      case 'Snow':
        return 'https://img.freepik.com/free-photo/3d-snowy-winter-landscape_1048-11056.jpg?size=626&ext=jpg&ga=GA1.1.1630149759.1687257850&semt=ais';
      case 'Mist':
        return 'https://img.freepik.com/free-photo/beautiful-shot-dry-grassy-field-with-tree-fog_181624-4200.jpg?size=626&ext=jpg&ga=GA1.1.1630149759.1687257850&semt=ais';
      case 'Smoke':
        return 'https://img.freepik.com/free-photo/greyscale-heavy-grey-clouds-background_181624-15388.jpg?size=626&ext=jpg&ga=GA1.2.1630149759.1687257850&semt=ais';
      case 'Haze':
        return 'https://img.freepik.com/free-photo/overlooking-view-urban-city-full-buildings-with-dark-clouds_181624-16657.jpg?size=626&ext=jpg&ga=GA1.1.1630149759.1687257850&semt=ais';
      case 'Dust':
        return 'https://img.freepik.com/premium-photo/sandstorm-covering-road-from-swakopmund-walvis-bay-namibia-africa_180224-39.jpg?size=626&ext=jpg&ga=GA1.2.1630149759.1687257850&semt=ais';
      case 'Clear':
        return 'https://img.freepik.com/free-photo/sun-rays-cloudy-sky_23-2148824930.jpg?size=626&ext=jpg&ga=GA1.1.1630149759.1687257850&semt=ais';
      default:
        return 'https://img.freepik.com/free-photo/grassy-field-with-leafless-trees-distance-cloudy-sky-background_181624-4535.jpg?size=626&ext=jpg&ga=GA1.2.1630149759.1687257850&semt=ais';
    }
  }
}
