import 'package:flutter/material.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:provider/provider.dart';

String title = '';
String description = '';

// ignore: camel_case_types
class Single_Task_Screen extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final index;
  // ignore: use_key_in_widget_constructors
  const Single_Task_Screen(this.index);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            Provider.of<TaskData>(context).getTaskTitle(index),
            style: const TextStyle(fontSize: 25),
          ),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            Provider.of<TaskData>(context).getTaskDescription(index),
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
