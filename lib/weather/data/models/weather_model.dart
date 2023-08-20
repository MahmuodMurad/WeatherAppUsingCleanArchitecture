import '../../domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
    super.temp,
    super.cityName,
    super.main,
    super.description,
    super.pressure,
  );

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      json["main"]["temp"],
      json["name"],
      json["weather"][0]["main"],
      json["weather"][0]["description"],
      json["main"]["pressure"],
    );
  }
}
