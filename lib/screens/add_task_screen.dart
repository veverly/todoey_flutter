import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  final taskHolder = TextEditingController();

  clearTextInput(){
    taskHolder.clear();
  }

  @override
  Widget build(BuildContext context) {
    String newTaskTile = "";

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        height: 300,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'What is your next task?',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: taskHolder,
              autofocus: true,
              textAlign: TextAlign.left,
              onChanged: (newText) {
                newTaskTile = newText;
              },
            ),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTile);
                clearTextInput();
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: const Size(200, 50),
                textStyle: const TextStyle(fontSize: 20),
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'ADD TASK',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
