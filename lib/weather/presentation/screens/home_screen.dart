import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/weather/presentation/controllers/weather_cubit/weather_cubit.dart';

import '../widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreenBody(),
    );
  }
}
