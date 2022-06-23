import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;
  final String title;
  final checkedBoxCallBack;
  final deleteCallBack;

  TaskTile(
      {required this.title,
      this.isChecked = false,
      required this.checkedBoxCallBack,
        this.deleteCallBack
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(value: isChecked, onChanged: checkedBoxCallBack),
      onLongPress: deleteCallBack,
    );
  }
}


