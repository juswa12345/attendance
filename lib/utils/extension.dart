import 'package:flutter/material.dart';
import 'package:attendance/utils/const.dart';

extension BuildContextExt on BuildContext {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar({
    required Widget content,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    Duration duration = defaultSnackBarDuration,
  }) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: content,
          behavior: SnackBarBehavior.floating,
          margin: margin,
          padding: padding,
          duration: duration,
          backgroundColor: Theme.of(this).colorScheme.inverseSurface,
        ),
      );
}
