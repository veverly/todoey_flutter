import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({super.key, required this.checkboxState, required this.toggleCheckboxState});

  final bool checkboxState;
  final Function(bool?) toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}