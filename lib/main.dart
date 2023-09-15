import 'package:flutter/material.dart';
import 'package:lesson36_weather_app/providers/theme_provider.dart';
import 'package:lesson36_weather_app/screens/day_screen.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return TextFieldUnfocus(
            child: MaterialApp(
              theme: ThemeData(
                scaffoldBackgroundColor: context.watch<ThemeProvider>().bgColor,
              ),
              debugShowCheckedModeBanner: false,
              home: const DayScreen(),
            ),
          );
        }
      ),
    );
  }
}

class TextFieldUnfocus extends StatelessWidget {
  const TextFieldUnfocus({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          final FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild!.unfocus();
          }
        },
        child: child,
      );
}
