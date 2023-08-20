

import '../entities/weather.dart';
import '../repositerys/base_weather_repo.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  Future<Weather> execute(String countryName) async {
    return await repository.getWeatherByCountryName(countryName);
  }
}