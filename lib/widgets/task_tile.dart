import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function toggleCheckBox;
  final Function longPressCallBack;

  TaskTile({this.task, this.toggleCheckBox, this.longPressCallBack});

  void checkBoxCallback(bool newValue) {
    /*setState(() {
      isChecked = newValue;
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isDone,
        onChanged: toggleCheckBox,
      ),
    );
  }
}
