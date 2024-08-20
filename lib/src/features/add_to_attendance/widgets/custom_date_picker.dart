import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

class CustomDateTimePicker extends StatefulWidget {
  const CustomDateTimePicker({
    super.key,
    this.labelText,
    this.hintText,
    required this.onSaved,
  });

  final String? labelText;
  final String? hintText;
  final ValueChanged<String> onSaved;

  @override
  State<CustomDateTimePicker> createState() => _CustomDateTimePickerState();
}

class _CustomDateTimePickerState extends State<CustomDateTimePicker> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  void getInput(String? value) => value != null ? widget.onSaved(value) : null;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: DateTimePicker(
        controller: controller,
        icon: const Icon(Icons.calendar_month),
        dateLabelText: widget.labelText,
        fieldHintText: widget.hintText,
        firstDate: DateTime(1950),
        lastDate: DateTime.now().add(const Duration(days: 365)),
        onChanged: getInput,
      ),
    );
  }
}
