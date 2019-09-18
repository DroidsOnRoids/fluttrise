import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fluttrise/api/user_service.dart';
import 'package:fluttrise/pages/sign_in/sign_in_page.dart';

import 'app/colors.dart';
import 'app/platform.dart';
import 'l10n/localizations.dart';

void main() async {
  final HttpUserService service = HttpUserService();
  await service.getUser('Dupa');
  setupTargetPlatform();
  runApp(FluttriseApp());
}

class FluttriseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) =>
      FluttriseLocalizations
          .of(context)
          .appTitle,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: BitriseColors.affair,
          buttonColor: BitriseColors.lightTurquoise,
          accentColor: BitriseColors.bossanova),
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        FluttriseLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales:
      supportedLanguages.map((String languageCode) => Locale(languageCode, '')),
      home: SignInPage(),
    );
  }
}
