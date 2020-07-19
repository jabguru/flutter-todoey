import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  final taskData = TaskData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final task = taskData.tasks[index];
        return TaskTile(
          taskTitle: task.name,
          isChecked: task.isDone,
          checkboxCallback: (newValue) {
            taskData.updateTask(task);
          },
          longPressCallback: () {
            taskData.deleteTask(task);
          },
        );
      },
      itemCount: taskData.tasksCount,
    );
  }
}
