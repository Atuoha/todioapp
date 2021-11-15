import 'package:flutter/material.dart';
import 'package:todoapp/custom_widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return taskData.getCount() < 1
          ? const Center(
              child: Text(
                'No Task! Why not add one 😍😎',
                style: TextStyle(color: Colors.brown, fontSize: 15),
              ),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                final task = taskData.tasks[index];
                return TaskTile(
                  title: taskData.getTaskTitle(index),
                  description: taskData.getTaskDescription(index),
                  index: taskData.getTaskIndex(index),
                  checkValue: taskData.getIsDone(index),
                  toggleCheck: () {
                    taskData.toggleCheck(index);
                  },
                  deleteCheck: () {
                    taskData.deleteCheck(task);
                  },
                );
              },
              itemCount: taskData.getCount(),
            );
    });
  }
}
