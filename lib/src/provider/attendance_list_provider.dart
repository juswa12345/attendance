import 'package:attendance/src/model/church_member.dart';
import 'package:attendance/src/provider/isar_provider.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_list_provider.g.dart';

@riverpod
List<ChurchMember> attendanceList(AttendanceListRef ref) {
  final isar = ref.watch(isarInstanceProvider);

  return isar.txnSync(
      () => isar.churchMembers.filter().fullNameIsNotEmpty().findAllSync());
}
