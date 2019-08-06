# Fluttrise

Unofficial [Bitrise.io](https://bitrise.io) client made with Flutter. 

## Setup
#### Regenerate JsonSerializable mappers:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

#### Regenerate translations:
```bash
flutter pub run intl_translation:extract_to_arb --locale=en --output-dir=lib/l10n/generated lib/main.dart
flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n/generated --no-use-deferred-loading lib/main.dart lib/l10n/generated/intl_*.arb
```