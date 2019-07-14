import 'package:flutter/material.dart';
import 'package:fluttrise/pages/sign_in/sign_in_page.dart';

import 'app/colors.dart';

void main() => runApp(FluttriseApp());

class FluttriseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttrise',
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: BitriseColors.purple,
          buttonColor: BitriseColors.bossanova,
          accentColor: BitriseColors.affair),
      home: const SignInPage(),
    );
  }
}
