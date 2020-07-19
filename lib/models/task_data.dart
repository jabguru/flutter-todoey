import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskData {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy breads'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get tasksCount {
    return tasks.length;
  }

  void addTask(String taskTitle) {
    final task = Task(name: taskTitle);
    _tasks.add(task);
  }

  void updateTask(Task task) {
    task.toggleDone();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
  }
}
