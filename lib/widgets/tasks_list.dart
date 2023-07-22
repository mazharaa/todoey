import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    final providerTask = Provider.of<TaskData>(context);

    return ListView.builder(
      itemBuilder: (context, index){
        final task = Provider.of<TaskData>(context).task[index];
        return TaskTile(
          taskTitle: task.name,
          isChecked: task.isDone,
          checkboxCallback: (checkboxState) {
            providerTask.toggleIsDone(task);
            // setState(() {
            //   providerTask.task[index].toggleIsDone();
            // });
          },
          removeTaskCallback: () {
            providerTask.removeTask(task);
          },
        );
      },
      itemCount: providerTask.task.length,
    );
  }
}