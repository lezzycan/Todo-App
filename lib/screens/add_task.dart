import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../modal/task_model.dart';

final textController = TextEditingController();
String? newTaskTitle;

class AddTaskScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              const Text(
                'Add task',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                controller: textController,
                onChanged: (value) {
                  newTaskTitle = value;
                },
                autofocus: true, // this makes the color blue and focus/
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                child: MaterialButton(
                  onPressed: () {

                      Provider.of<TaskProvider>(
                          context, listen: false).addTask(newTaskTitle!);
                      Navigator.pop(context);
                      textController.clear();


                  },
                  minWidth: double.infinity,
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
