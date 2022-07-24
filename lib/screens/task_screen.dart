import "package:flutter/material.dart";
import 'package:todoey/screens/add_task.dart';

import '../modal/task_model.dart';
import '../widget/task_list.dart';
import 'package:provider/provider.dart';

class TasksScreens extends StatelessWidget {
  const TasksScreens({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context,
            builder: (context) =>  AddTaskScreen(),
          ); // this builder
        },
      backgroundColor: Colors.blue,
      child: const Icon(Icons.add),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, bottom: 30.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children:    [
                const CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.list,
                  size: 30.0,)),
              const SizedBox(
                height: 10.0,
              ),
              const Text("Todoey",
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),),
                Text(
                  Provider.of<TaskProvider>(context).taskLength() + ' Task',
               // '${Provider.of<TaskProvider>(context, listen: false).taskList
               // .length} Tasks',
                  style: const TextStyle(
                    fontSize: 30.0
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0))
              ),

              child:    const TaskLists(),
                  ),
            ),

        ],
      ),
    );
  }
}




