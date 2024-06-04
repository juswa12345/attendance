import 'package:attendance/src/model/church_member.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class ChurchAttendance {
  static late Isar isar;

  // Initialize DB
  static Future<void> initializeDatabase() async {
    final dir = await getApplicationDocumentsDirectory();

    isar = await Isar.open(
      [ChurchMemberSchema],
      directory: dir.path,
    );
  }

  //create Member

  Future<void> addMember(ChurchMember churchMembers) async {
    await isar
        .writeTxn(() async => await isar.churchMembers.put(churchMembers));
  }
}
