import 'package:flutter/material.dart';
import 'package:todoey/models/task_model.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks=[
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy tea'),
  ];
  int get listCounter {
    return tasks.length;
  }

  void addTask(String newTaskTitle){
    final task=Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }

}