import 'package:flutter/material.dart';
import 'package:fluttrise/pages/sign_in/sign_in_page.dart';

import 'app/colors.dart';
import 'app/platform.dart';

void main() {
  setupTargetPlatform();
  runApp(FluttriseApp());
}

class FluttriseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttrise',
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: BitriseColors.affair,
          buttonColor: BitriseColors.lightTurquoise,
          accentColor: BitriseColors.bossanova),
      home: const SignInPage(),
    );
  }
}
