import 'package:flutter/material.dart';

class WeatherDescreption extends StatelessWidget {
  const WeatherDescreption({
    Key? key,
    required this.descrepthion,
    required this.weatherIcon,
  }) : super(key: key);
  final String descrepthion;
  final IconData weatherIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          weatherIcon,
          color: Colors.white,
          size: 26,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          descrepthion,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
