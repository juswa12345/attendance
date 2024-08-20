import 'package:attendance/src/features/add_to_attendance/widgets/custom_date_picker.dart';
import 'package:attendance/src/features/add_to_attendance/widgets/drop_down.dart';
import 'package:attendance/src/provider/attendance_provider.dart';
import 'package:attendance/src/utils/const.dart';
import 'package:attendance/src/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:attendance/src/features/add_to_attendance/widgets/text_field.dart';
import 'package:attendance/src/model/church_member.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddToAttendace extends ConsumerStatefulWidget {
  const AddToAttendace({super.key});

  static const String routeName = 'add-to-attendance';
  static const String path = '/add-to-attendance';

  @override
  ConsumerState<AddToAttendace> createState() => _AddToAttendaceState();
}

class _AddToAttendaceState extends ConsumerState<AddToAttendace> {
  late ChurchMember churchMember;
  int? age;

  @override
  void initState() {
    churchMember = ChurchMember.init();
    super.initState();
  }

  void getAge(String birthday) =>
      setState(() => age = DateTime.now().year - DateTime.parse(birthday).year);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ADD')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref
              .watch(attendanceProvider.notifier)
              .addMember(churchMember)
              .then((e) {
            if (e) {
              context.showSnackBar(
                  content: const Center(child: Text(addedSuccessful)));
              context.pop();
            } else {
              context.showSnackBar(
                  content: const Center(child: Text(memberExisting)));
            }
          });
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
            textInputType: TextInputType.name,
          ),
          TextFields(
            label: 'Address',
            onChanged: (value) => churchMember.address = value,
            textInputType: TextInputType.name,
          ),
          TextFields(
            label: 'Contact Number',
            onChanged: (value) => churchMember.contactNumber = value,
            textInputType: TextInputType.number,
          ),
          TextFields(
            label: 'Email',
            onChanged: (value) => churchMember.email = value,
            textInputType: TextInputType.emailAddress,
          ),
          Row(
            children: [
              Expanded(
                child: CustomDateTimePicker(
                  labelText: 'Birthday',
                  onSaved: (value) {
                    churchMember.birthday = value;
                    getAge(value);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Text(
                  'Age: ${age ?? 'NA'}',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
          CustomDropDown(
              onChanged: (value) => churchMember.department = value.getName()),
        ],
      ),
    );
  }
}
