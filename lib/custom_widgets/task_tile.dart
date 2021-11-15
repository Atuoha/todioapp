import 'package:flutter/material.dart';
import 'package:todoapp/custom_widgets/task_check_box.dart';
import 'package:todoapp/screens/single_task_scren.dart';

// ignore: must_be_immutable
class TaskTile extends StatelessWidget {
  late bool checkValue;
  final String title;
  final String description;
  final int index;
  final Function() toggleCheck;
  final Function() deleteCheck;

  // ignore: use_key_in_widget_constructors
  TaskTile({
    required this.title,
    required this.description,
    required this.index,
    required this.checkValue,
    required this.toggleCheck,
    required this.deleteCheck,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
          fontSize: 20,
          color: checkValue ? Colors.brown[200] : Colors.brown,
          decoration: checkValue ? TextDecoration.lineThrough : null,
        ),
      ),
      subtitle: Text(description,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            decoration: checkValue ? TextDecoration.lineThrough : null,
          )),
      tileColor: Colors.brown,
      trailing: TaskCheckBox(
        checkValue: checkValue,
        updateCheckFnc: toggleCheck,
      ),
      leading: const Icon(
        Icons.list,
        color: Colors.brown,
      ),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Single_Task_Screen(index),
          ),
        )
      },
      onLongPress: deleteCheck,
    );
  }
}
