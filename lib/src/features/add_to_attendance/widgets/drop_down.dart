import 'package:attendance/src/utils/enums.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    required this.onChanged,
    super.key,
  });

  final ValueChanged<Department> onChanged;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  final List<Department> departments = Department.values;

  late Department department;

  @override
  void initState() {
    super.initState();

    department = departments.first;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: DropdownButton<Department>(
        value: department,
        style: const TextStyle(fontSize: 20.0),
        underline: Container(
          height: 2,
          color: Colors.blueGrey,
        ),
        isExpanded: true,
        items: departments
            .map((e) => DropdownMenuItem(value: e, child: Text(e.getName())))
            .toList(),
        onChanged: (e) {
          if (e != null) {
            setState(() {
              department = e;
              widget.onChanged(e);
            });
          }
        },
      ),
    );
  }
}
