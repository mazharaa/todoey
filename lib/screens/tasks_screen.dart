import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';
import 'package:todoey/screens/add_task_screen.dart';
import '../widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerTask = Provider.of<TaskData>(context);

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom
                ),
                child: AddTaskScreen(addTaskCallBack: (newTask) {
                  providerTask.addTask(newTask);
                  // setState(() {
                  //   providerTask.task.add(Task(name: newTask));
                  // });
                }),
              ),
            ),
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50, left: 40, right: 40, bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 30),
                  child: const Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 50,
                  ),
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50
                  ),
                ),
                Text(
                  providerTask.task.length > 1
                      ? '${providerTask.task.length} Tasks' : '1 Task',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                ),
                  color: Colors.white
              ),
              height: 100,
              child: Container(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: TasksList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
