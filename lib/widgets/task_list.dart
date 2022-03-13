import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks=[
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          TaskTile(
              isChecked: tasks[index].isDone,
              taskTitle: tasks[index].name),
              checkBoxCallBack: (checkboxState){
        setState(() {
          tasks[index].toggleDone();
        });
              }
      itemCount: tasks.length,
    );
  }
}