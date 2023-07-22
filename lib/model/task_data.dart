import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey/model/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Pray'),
    Task(name: 'Take a bath'),
    Task(name: 'Coding')
  ];

  UnmodifiableListView<Task> get task => UnmodifiableListView(_tasks);

  void addTask (String newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void toggleIsDone (Task task) {
    task.toggleIsDone();
    notifyListeners();
  }

  void removeTask (Task task) {
    _tasks.removeWhere((element) => element == task);
    notifyListeners();
  }
}