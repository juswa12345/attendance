import 'package:flutter/material.dart';
import 'package:attendance/features/scanner/qr_scanner.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  static const String routeName = 'homepage';
  static const String path = '/homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Attendance')),
      ),
      body: const Center(child: QrScannerPage()),
    );
  }
}
