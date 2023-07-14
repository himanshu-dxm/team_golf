/*

import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {

  final Function callbackTask;
  String title,description,tasProgress,taskDone;
  TaskCard({
    super.key,
    required this.callbackTask,
    required this.taskDone,
    required this.title,
    required this.description,
    required this.tasProgress
  });

  // @override
  Widget build(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Task Title'),
          content: Text(
              ' Task Description'
          ),
          actions: [
            TextButton(
                onPressed: () {
                  if(!taskDone && _taskProgress <=0.75) {
                    setState(() {
                      taskDone = true;
                      _totalCoins += 150;
                      _taskProgress += 0.25;
                    });
                  }

                  Navigator.pop(context);
                },
                child: Text('Yes')),
            TextButton(
                onPressed: () {

                  setState(() {
                    taskDone = false;
                    _totalCoins -= 150;
                    _taskProgress -= 0.25;
                  });
                  Navigator.pop(context);
                },
                child: Text('No'))
          ],
        ));
  }
}


 */