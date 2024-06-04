import 'package:flutter/material.dart';
import 'package:attendance/features/add_to_attendance/add_to_attendace.dart';
import 'package:attendance/utils/extension.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_bar_code_scanner_dialog/qr_bar_code_scanner_dialog.dart';

class QrScannerPage extends StatefulWidget {
  const QrScannerPage({super.key});

  @override
  State<QrScannerPage> createState() => _QrScannerPageState();
}

class _QrScannerPageState extends State<QrScannerPage> {
  final _qrBarCodeScannerDialogPlugin = QrBarCodeScannerDialog();
  String? code;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            _qrBarCodeScannerDialogPlugin.getScannedQrBarCode(
                context: context,
                onCode: (code) {
                  setState(() {
                    this.code = code;
                  });

                  context.showSnackBar(content: Text(code ?? ''));

                  // ChurchAttendance().addMember();
                });
          },
          child: const Text(
            "SCAN",
            style: TextStyle(fontSize: 20),
          ),
        ),
        const Text(
          'or',
          style: TextStyle(fontSize: 20),
        ),
        TextButton(
          onPressed: () => context.pushNamed(AddToAttendace.routeName),
          child: const Text(
            'ADD TO ATTENDANCE',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
