import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list.dart';

class AddTaskScreen extends StatelessWidget {
  late String newTaskTitle;
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                  newTaskTitle=newText;
              },
            ),
            SizedBox(height: 10.0,),
            TextButton(
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
              ),
              child: Text('Add',style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
