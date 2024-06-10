import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  const TextFields({
    required this.label,
    required this.onChanged,
    required this.textInputType,
    super.key,
  });

  final String label;
  final ValueChanged<String> onChanged;
  final TextInputType textInputType;

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  void getInput(String value) => widget.onChanged(value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: TextField(
        controller: controller,
        onChanged: getInput,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
