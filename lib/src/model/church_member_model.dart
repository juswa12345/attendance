import 'package:isar/isar.dart';

class ChurchMemberModel {
  ChurchMemberModel(
    this.fullName,
    this.birthday,
    this.department,
    this.address,
    this.contactNumber,
    this.email,
  );

  /// Unique [id] of item
  /// auto increments
  Id id = Isar.autoIncrement;

  String fullName;

  DateTime birthday;

  String department;

  String address;

  String email;

  String contactNumber;
}
