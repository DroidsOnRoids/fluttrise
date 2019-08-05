import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'generated/messages_all.dart';

class FluttriseLocalizationsDelegate
    extends LocalizationsDelegate<FluttriseLocalizations> {
  const FluttriseLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      const <String>['en'].contains(locale.languageCode);

  @override
  Future<FluttriseLocalizations> load(Locale locale) =>
      FluttriseLocalizations.load(locale);

  @override
  bool shouldReload(FluttriseLocalizationsDelegate old) => false;
}

class FluttriseLocalizations {
  static Future<FluttriseLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return FluttriseLocalizations();
    });
  }

  static FluttriseLocalizations of(BuildContext context) {
    return Localizations.of<FluttriseLocalizations>(
        context, FluttriseLocalizations);
  }

  String get appTitle {
    return Intl.message('Fluttrise');
  }
}
