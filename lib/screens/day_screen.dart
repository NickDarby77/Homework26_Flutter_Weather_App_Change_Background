import 'package:flutter/material.dart';
import 'package:lesson36_weather_app/providers/theme_provider.dart';
import 'package:lesson36_weather_app/resources/resources.dart';
import 'package:lesson36_weather_app/screens/night_screen.dart';
import 'package:lesson36_weather_app/widgets/week_days_widget.dart';
import 'package:provider/provider.dart';

class DayScreen extends StatelessWidget {
  const DayScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Color> bgDayColor = [
      const Color(0xff4BB5F1),
      const Color(0xff2F2CBC),
    ];

    final vm = context.watch<ThemeProvider>();

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   begin: Alignment.bottomLeft,
            //   end: Alignment.topRight,
            //   colors: bgDayColor,
            // ),
            ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          vm.changeTheme();
                        },
                        icon: Image.asset(
                          vm.isDarkTheme ? Images.ellipse1 : Images.ellipse2,
                        ),
                      ),
                      const SizedBox(width: 25),
                      const Text(
                        'San Francisco',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'Clear',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 18),
                  Image.asset(
                    Images.sun,
                    width: 110,
                    height: 110,
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    '11',
                    style: TextStyle(
                      fontSize: 72,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'May XX, 20XX',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: days.length,
                    itemBuilder: (context, index) => WeekDaysWidget(
                      model: days[index],
                    ),
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NightScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Night Screen',
                      style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
