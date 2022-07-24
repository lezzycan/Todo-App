import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/modal/task.dart';

class TaskProvider extends ChangeNotifier {
  final List<Task> _tasksList = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy detergent'),
  ];


  //
  // int get taskLength {
  //
  //   return _tasksList.length;
  //
  //
  // }



  String taskLength(){
   int taskNum = _tasksList.length;
       return taskNum.toString();
  }

  UnmodifiableListView<Task> get taskList{
    return UnmodifiableListView(_tasksList) ;
  }


  void addTask(String newTask) {
    final task = Task(name: newTask);
    _tasksList.add(task);
    notifyListeners();

  }

  void upDateCheckBox(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
  _tasksList.remove(task);
    notifyListeners();
  }
}
