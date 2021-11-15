import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TaskCheckBox extends StatefulWidget {
  final bool checkValue;
  final void Function() updateCheckFnc;

  // ignore: use_key_in_widget_constructors
  const TaskCheckBox({
    required this.checkValue,
    required this.updateCheckFnc,
  });

  @override
  State<TaskCheckBox> createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Checkbox(
        value: widget.checkValue,
        onChanged: (newValue) {
          widget.updateCheckFnc();
        },
        checkColor: Colors.white,
        activeColor: Colors.brown,
      );
    });
  }
}
