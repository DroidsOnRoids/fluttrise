import 'dart:io';

import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';

void setupTargetPlatform() {
  if (!Platform.isIOS && !Platform.isAndroid) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}
