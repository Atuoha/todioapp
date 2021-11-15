import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = '';
    String description = '';

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.add_task_rounded,
              size: 30,
              color: Colors.brown,
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            label: Text(
              'Title',
            ),
          ),
          onChanged: (value) {
            title = value;
          },
        ),
        TextField(
          textAlign: TextAlign.center,
          minLines: 3,
          maxLines: 4,
          decoration: const InputDecoration(
            labelText: 'Details',
          ),
          onChanged: (value) {
            description = value;
          },
        ),
        ElevatedButton(
          onPressed: () {
            // Add Task here
            if (title != '' && description != '') {
              Provider.of<TaskData>(context, listen: false).addTask(title, description);
              Navigator.pop(context);
            }
          },
          child: const Text(
            'Add Task',
          ),
        ),
      ]),
    );
  }
}
