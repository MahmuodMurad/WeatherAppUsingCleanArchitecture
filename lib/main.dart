import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/weather/presentation/controllers/weather_cubit/weather_cubit.dart';
import 'package:untitled1/weather/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => WeatherCubit()..executeFunction('egypt'),
        child: const HomeScreen(),
      ),
    );
  }
}
