import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'generated/messages_all.dart';

const List<String> supportedLanguages = <String>['en'];

class FluttriseLocalizationsDelegate
    extends LocalizationsDelegate<FluttriseLocalizations> {
  const FluttriseLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      supportedLanguages.contains(locale.languageCode);

  @override
  Future<FluttriseLocalizations> load(Locale locale) {
    final String name =
    locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return FluttriseLocalizations();
    });
  }

  @override
  bool shouldReload(FluttriseLocalizationsDelegate old) => false;
}

class FluttriseLocalizations {
  String get appListPageTitle => Intl.message('Apps');

  String get appTitle => Intl.message('Fluttrise');

  String get signInPageTitle => Intl.message('Sign In');

  String get signInButtonText => Intl.message('SIGN IN');

  String get personalAccessTokenHint => Intl.message('Personal access token');

  static FluttriseLocalizations of(BuildContext context) =>
      Localizations.of(context, FluttriseLocalizations);
}
