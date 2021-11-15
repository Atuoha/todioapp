import 'package:flutter/material.dart';
import 'package:todoapp/custom_widgets/task_list.dart';

class DownWidget extends StatelessWidget {
  const DownWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(120.0),
            ),
            color: Colors.white,
          ),
          child: const TaskList()),
    );
  }
}
