import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class UpperView extends StatelessWidget {
  const UpperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 60,
        left: 30,
        right: 30,
        bottom: 30,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: Icon(
            Icons.list,
            size: 45,
            textDirection: TextDirection.rtl,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Atutechs Corp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 5,
          ),
        ),
        const Text(
          'Todio App',
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '#${Provider.of<TaskData>(context).getCount()} Tasks',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ]),
    );
  }
}
