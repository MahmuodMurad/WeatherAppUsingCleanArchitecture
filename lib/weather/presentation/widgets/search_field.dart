import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/weather/presentation/controllers/weather_cubit/weather_cubit.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) => TextFormField(
        onFieldSubmitted: (value) {
          BlocProvider.of<WeatherCubit>(context).executeFunction(value);
        },
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'search must not be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search',
          hintStyle: const TextStyle(color: Colors.white),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
              opacity: .8,
              child: Icon(
                Icons.search,
                size: 36,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
        width: 5,
      ),
      borderRadius: BorderRadius.circular(
        12,
      ),
    );
  }
}
