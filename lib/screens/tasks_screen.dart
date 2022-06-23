import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_model.dart';
import 'package:todoey/my_provider.dart';
import 'package:todoey/screens/add_task_screen.dart';
import '../widgts/tasks_list.dart';


class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add,),
          onPressed: (){
          //show bottom sheet
          showModalBottomSheet(context: context, builder: (context)=>
             AddTaskScreen()
          );
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                  ),
                  backgroundColor: Colors.white,
                  radius: 25,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} task',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}




