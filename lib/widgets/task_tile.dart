import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
    required this.removeTaskCallback
  });

  final String taskTitle;
  final bool isChecked;
  final void Function(bool?) checkboxCallback;
  final VoidCallback removeTaskCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: removeTaskCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20,
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}