import 'dart:io';

import 'package:attendance/src/attendance_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

late final Directory appDocumentsDirectory;
late final ProviderContainer providerContainer;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  appDocumentsDirectory = await getApplicationDocumentsDirectory();

  providerContainer = ProviderContainer();

  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: const AttendanceApp(),
    ),
  );
}
