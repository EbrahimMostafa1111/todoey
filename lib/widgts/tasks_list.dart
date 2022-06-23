import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/my_provider.dart';
import 'package:todoey/my_provider.dart';
import 'package:todoey/widgts/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, int index) {
            return TaskTile(
              title: taskData.tasks[index].name!,
              isChecked: taskData.tasks[index].isDone!,
              checkedBoxCallBack: (newVal) {
                taskData.updateTask(
                    taskData.tasks[index]);
              },
              deleteCallBack: (){
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
// we use consumer to reduce code (Provider.of<TaskData>(context))== taskData
// and consumer avoids to use listen:false also