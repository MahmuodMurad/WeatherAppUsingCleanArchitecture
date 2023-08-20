import 'package:flutter/material.dart';

class Degree extends StatelessWidget {
  const Degree({
    Key? key,
    required this.degree,
  }) : super(key: key);
  final String degree;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          degree,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Text(
          ' °C',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
