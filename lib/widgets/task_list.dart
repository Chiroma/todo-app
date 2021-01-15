import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  /*List<Task> taskList;

  _TaskListState(this.taskList);*/

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              task: taskdata.taskList[index],
              toggleCheckBox: (newValue) {
                taskdata.updateTask(taskdata.taskList[index]);
              },
              longPressCallBack: () {
                taskdata.deleteTask(taskdata.taskList[index]);
              },
            );
          },
          itemCount: taskdata.taskCount,
        );
      },
    );
  }
}
