import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_checkbox.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) toggleCheckboxState;

  TaskTile({required this.taskTitle, required this.isChecked, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckboxState,
      )
    );
  }
}

