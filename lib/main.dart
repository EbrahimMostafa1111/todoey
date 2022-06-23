import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/my_provider.dart';
import 'package:todoey/screens/tasks_screen.dart';



void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context)=> TaskData(),
      child: MaterialApp(
   debugShowCheckedModeBanner: false,
        theme: ThemeData(
        ),
        home: TasksScreen(),
      ),
    );
  }
}

