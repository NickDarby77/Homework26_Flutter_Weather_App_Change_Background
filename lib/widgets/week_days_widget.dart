import 'package:flutter/material.dart';

class WeekDaysWidgetModel {
  final String day;
  final String image;
  final int celciusDay;
  final int celciusNight;
  WeekDaysWidgetModel({
    required this.day,
    required this.image,
    required this.celciusDay,
    required this.celciusNight,
  });
}

List<WeekDaysWidgetModel> days = [
  WeekDaysWidgetModel(
    day: 'Monday',
    image: 'assets/images/cloud.png',
    celciusDay: 10,
    celciusNight: 10,
  ),
  WeekDaysWidgetModel(
    day: 'Tuesday',
    image: 'assets/images/sun.png',
    celciusDay: 10,
    celciusNight: 10,
  ),
  WeekDaysWidgetModel(
    day: 'Wednesday',
    image: 'assets/images/sun.png',
    celciusDay: 10,
    celciusNight: 10,
  ),
  WeekDaysWidgetModel(
    day: 'Thursday',
    image: 'assets/images/rain.png',
    celciusDay: 10,
    celciusNight: 10,
  ),
  WeekDaysWidgetModel(
    day: 'Friday',
    image: 'assets/images/snowflake.png',
    celciusDay: 10,
    celciusNight: 10,
  ),
];

class WeekDaysWidget extends StatelessWidget {
  const WeekDaysWidget({
    super.key,
    required this.model,
  });

  final WeekDaysWidgetModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 11),
          child: Text(
            model.day,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
        const Spacer(),
        Image.asset(model.image, height: 30),
        const SizedBox(width: 80),
        Text(
          model.celciusDay.toString(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF),
          ),
        ),
        const SizedBox(width: 30),
        Text(
          model.celciusNight.toString(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Color(0xFFA8A8A8),
          ),
        ),
      ],
    );
  }
}
