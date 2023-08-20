import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.apiKey}');
      debugPrint(response.data.toString());
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}