import 'package:attendance/src/model/church_member.dart';
import 'package:attendance/src/provider/attendance_list_provider.dart';
import 'package:attendance/src/provider/isar_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_provider.g.dart';

@riverpod
class Attendance extends _$Attendance {
  @override
  List<ChurchMember> build() => ref.read(attendanceListProvider);

  Future<bool> addMember(ChurchMember member) async {
    final isar = ref.watch(isarInstanceProvider);

    //check if member is Existing
    if (isMemberExisting(member)) {
      return false;
    } else {
      await isar.writeTxn(() => isar.churchMembers.put(member));
    }

    state = List.of(state)..add(member);

    return true;
  }

  bool isMemberExisting(ChurchMember member) {
    final currentAttendace = state;

    return currentAttendace.any((e) =>
        e.fullName == member.fullName &&
        e.contactNumber == member.contactNumber);
  }
}
