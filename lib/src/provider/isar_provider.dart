import 'package:attendance/main.dart';
import 'package:attendance/src/model/church_member.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar_provider.g.dart';

/// Returns the existing instance, or opens an instance if it is not initialized
@riverpod
Isar isarInstance(IsarInstanceRef ref) =>
    Isar.getInstance() ??
    Isar.openSync(
      [ChurchMemberSchema],
      directory: appDocumentsDirectory.path,
    );
