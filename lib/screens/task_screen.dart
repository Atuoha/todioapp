import 'package:flutter/material.dart';
import 'package:todoapp/custom_widgets/add_task_screen.dart';
import 'package:todoapp/custom_widgets/down_widget.dart';
import 'package:todoapp/custom_widgets/up_widget.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
           UpperView(),
          DownWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
        onPressed: () => {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
                child: Container(
              color: const Color(0xff757575),
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const AddTaskScreen(),
            )),
          )
        },
      ),
    );
  }
}
