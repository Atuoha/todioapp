import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'Task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [];

  int getCount() {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String title, String description) {
    final task = Task(title: title, description: description);
    _tasks.add(task);
    notifyListeners();
  }

  String getTaskTitle(int index) {
    return _tasks[index].title;
  }

  String getTaskDescription(int index) {
    return _tasks[index].description;
  }

  void toggleCheck(index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteCheck(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  int getTaskIndex(index) {
    return _tasks.indexOf(_tasks[index]);
  }

  bool getIsDone(index) {
    return _tasks[index].isDone;
  }
}
