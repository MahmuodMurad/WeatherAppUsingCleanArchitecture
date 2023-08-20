
import '../entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCountryName(String countryName);
}
