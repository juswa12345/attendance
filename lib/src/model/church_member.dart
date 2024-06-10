import 'package:attendance/src/model/church_member_model.dart';
import 'package:attendance/src/utils/enums.dart';
import 'package:isar/isar.dart';

part 'church_member.g.dart';

@Collection()
class ChurchMember extends ChurchMemberModel {
  ChurchMember(
    super.fullName,
    super.birthday,
    super.department,
    super.address,
    super.contactNumber,
    super.email,
  );

  factory ChurchMember.init() => ChurchMember(
        'NA',
        'NA',
        Department.newComers.getName(),
        'NA',
        'NA',
        'NA',
      );
}
