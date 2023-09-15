import 'package:flutter/material.dart';
import '../widgets/week_days_widget.dart';

class NightScreen extends StatelessWidget {
  const NightScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Color> bgNightColor = [
      const Color(0xff223076),
      const Color(0xff06050E),
    ];

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: bgNightColor,
          ),
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
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/Ellipse2.png',
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
                    'assets/images/moon.png',
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
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Day Screen',
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
