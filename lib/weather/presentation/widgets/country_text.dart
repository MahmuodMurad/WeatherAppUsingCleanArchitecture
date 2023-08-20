import 'package:flutter/material.dart';

class CountryText extends StatelessWidget {
  const CountryText({
    Key? key,
    required this.country,
  }) : super(key: key);
  final String country;

  @override
  Widget build(BuildContext context) {
    return  Text(
      country,
      style:const TextStyle(
        color: Colors.white,
        fontSize: 26,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
