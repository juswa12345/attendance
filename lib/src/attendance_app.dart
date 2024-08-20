import 'package:attendance/src/utils/router.dart';
import 'package:flutter/material.dart';

class AttendanceApp extends StatelessWidget {
  const AttendanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'ATTENDANCE SCANNER',
      themeMode: ThemeMode.dark,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
