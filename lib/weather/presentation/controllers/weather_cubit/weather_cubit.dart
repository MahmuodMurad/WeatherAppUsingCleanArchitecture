import 'package:bloc/bloc.dart';
import 'package:untitled1/weather/domain/entities/weather.dart';

import '../../../data/datasources/remote_data_source.dart';
import '../../../data/repositerys/weather_repository.dart';
import '../../../domain/repositerys/base_weather_repo.dart';
import '../../../domain/usecases/get_weather_by_cuontry_name.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
  Weather weather=Weather(1, '', '', '', 1);
  Future<void> executeFunction(String country) async {
    emit(WeatherInitial());
    BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
    BaseWeatherRepository baseWeatherRepository =
        WeatherRepository(baseRemoteDataSource);
     weather =
        await GetWeatherByCountryName(baseWeatherRepository).execute(country);
    emit(WeatherSuccess());
  }
}
