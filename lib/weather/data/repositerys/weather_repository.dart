
import '../../domain/entities/weather.dart';
import '../../domain/repositerys/base_weather_repo.dart';
import '../datasources/remote_data_source.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCountryName(String countryName) async {
    return (await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }
}