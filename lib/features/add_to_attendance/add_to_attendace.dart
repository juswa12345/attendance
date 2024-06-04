import 'package:flutter/material.dart';
import 'package:attendance/actions/actions.dart';
import 'package:attendance/features/add_to_attendance/widgets/text_field.dart';
import 'package:attendance/src/model/church_member.dart';

class AddToAttendace extends StatefulWidget {
  const AddToAttendace({super.key});

  static const String routeName = 'add-to-attendance';
  static const String path = '/add-to-attendance';

  @override
  State<AddToAttendace> createState() => _AddToAttendaceState();
}

class _AddToAttendaceState extends State<AddToAttendace> {
  late ChurchMember churchMember;

  @override
  void initState() {
    churchMember = ChurchMember.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ADD')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.showSnackBar(
          //     content: Column(
          //   children: [
          //     Text(churchMember.fullName),
          //     Text(churchMember.address),
          //   ],
          // ));
          final attendance = ChurchAttendance();

          attendance.addMember(churchMember);
        },
        child: const Center(
          child: Icon(Icons.check),
        ),
      ),
      body: Column(
        children: [
          TextFields(
            label: 'Name',
            onChanged: (value) => churchMember.fullName = value,
          ),
          TextFields(
            label: 'Address',
            onChanged: (value) => churchMember.address = value,
          ),
        ],
      ),
    );
  }
}
