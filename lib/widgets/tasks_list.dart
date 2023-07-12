import 'package:flutter/material.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = [
      Task(name: 'Pray'),
      Task(name: 'Take a bath'),
      Task(name: 'Coding')
    ];

    return ListView.builder(
      itemBuilder: (BuildContext context, int index){
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleIsDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}