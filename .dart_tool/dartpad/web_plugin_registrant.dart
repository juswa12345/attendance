// Flutter web plugin registrant file.
//
// Generated file. Do not edit.
//

// @dart = 2.13
// ignore_for_file: type=lint

import 'package:qr_bar_code_scanner_dialog/qr_bar_code_scanner_dialog_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins([final Registrar? pluginRegistrar]) {
  final Registrar registrar = pluginRegistrar ?? webPluginRegistrar;
  QrBarCodeScannerDialogWeb.registerWith(registrar);
  registrar.registerMessageHandler();
}
