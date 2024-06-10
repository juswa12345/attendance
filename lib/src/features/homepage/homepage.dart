import 'package:attendance/src/features/members_page/members_page.dart';
import 'package:flutter/material.dart';
import 'package:attendance/src/features/scanner/qr_scanner.dart';
import 'package:go_router/go_router.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  static const String routeName = 'homepage';
  static const String path = '/homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ATTENDANCE'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
                onTap: () => context.pushNamed(MembersPage.routeName),
                child: const Icon(Icons.person)),
          )
        ],
      ),
      body: const Center(child: QrScannerPage()),
    );
  }
}
