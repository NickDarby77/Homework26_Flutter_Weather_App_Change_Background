import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:lesson36_weather_app/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.ellipse1).existsSync(), true);
    expect(File(Images.ellipse2).existsSync(), true);
    expect(File(Images.cloud).existsSync(), true);
    expect(File(Images.moon).existsSync(), true);
    expect(File(Images.rain).existsSync(), true);
    expect(File(Images.snowflake).existsSync(), true);
    expect(File(Images.sun).existsSync(), true);
  });
}
