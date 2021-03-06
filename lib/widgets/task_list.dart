import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {

  TaskList(this.tasks);
  final List<Task> tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (checkboxState){
              setState(() {
                widget.tasks[index].toggleDone();
              });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}