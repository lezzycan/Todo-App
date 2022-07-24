import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widget/task_tile.dart';
import '../modal/task_model.dart';

class TaskLists extends StatelessWidget {
  const TaskLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskProvider.taskList[index];
              return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              toggleState: (bool? value) {
                taskProvider
                .upDateCheckBox(task);
              },
              longPress: (){
                taskProvider.deleteTask(task);
              },
              );
        },
            itemCount:int.parse(taskProvider.taskLength()),
          );
        }
    );
  }
}
