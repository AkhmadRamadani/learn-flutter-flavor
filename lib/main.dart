import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'app.dart';
import 'flavors.dart';

FutureOr<void> main() async {
  runZonedGuarded(
    () async {
      F();
      runApp(const App());
    },
    (error, stackTrace) {
      log(
        'runZonedGuarded: Caught error in my root zone.',
        error: error,
        stackTrace: stackTrace,
      );
    },
  );
}
