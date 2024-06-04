import 'dart:io';

import 'package:flutter/material.dart';
import 'package:attendance/actions/actions.dart';
import 'package:attendance/utils/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

late final Directory appDocumentsDirectory;
late final ProviderContainer providerContainer;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ChurchAttendance.initializeDatabase();

  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'ATTENDANCE SCANNER',
      themeMode: ThemeMode.system,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
