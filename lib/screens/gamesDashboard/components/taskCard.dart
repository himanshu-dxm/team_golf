

import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {

  final Function callbackTaskCard;
  String title,description,tasProgress;
  bool taskDone;
  TaskCard({
    super.key,
    required this.callbackTaskCard,
    required this.taskDone,
    required this.title,
    required this.description,
    required this.tasProgress
  });

  // @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /*
        showDialog(
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

         */
        callbackTaskCard(context,'Task1','Description');


      },
      child: Container(
        margin: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width*0.95,
        decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(16)),

                  ),
                  child: Center(
                      child: Text(
                        '+150 ',
                      )
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(8),
                  // margin: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Task 1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),
                      ),
                      Text(
                        "Walk | Short Decsription" ,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white60
                        ),
                      )

                    ],
                  ),
                ),
              ],
            ),

            Expanded(
              child: Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  child: Icon(
                    Icons.circle_rounded,
                    // size: 24,
                    color: taskDone ? Colors.green : Colors.white,
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}


