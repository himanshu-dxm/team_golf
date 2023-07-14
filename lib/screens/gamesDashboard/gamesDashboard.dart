import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sih_team_golf/screens/gamesDashboard/components/leaderboard.dart';
import 'package:sih_team_golf/screens/gamesDashboard/components/singleTaskScreen.dart';


import 'components/focusText.dart';
import 'components/header.dart';
import 'components/topCard.dart';


class GamesDashboard extends StatefulWidget {
  const GamesDashboard({super.key});

  @override
  State<GamesDashboard> createState() => _GamesDashboardState();
}

class _GamesDashboardState extends State<GamesDashboard> {

  callbackTask(totalCoins,taskProgress,taskDone) {
    setState(() {
      _totalCoins =  totalCoins;
      _taskProgress = taskProgress;
      this.task1Done = taskDone;
    });
  }

  /*
  callbackTaskCard(context,title,description) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('$title'),
          content: Text(
              '$description'
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

   */
  
  // final controller = Get.put(TransactionController());

  double _totalCoins = 10000;
  double tmp=1000;
  double _taskProgress = 0.10;

  bool task1Done = false;
  bool task2Done = false;
  bool task3Done = false;
  bool task4Done = false;

  @override
  void initState() {
    calculateTotal();
  }

  void calculateTotal() async {
    // _totalCarbonSpent += await controller.getTotalCarbon();
    // _totalCarbonOverall += _totalCarbonSpent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(color: Colors.black87),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Coins and Profile
              // Header.header(context , 1000, "Hello"),

              Header(totalCoins: _totalCoins),


              const SizedBox(
                height: 8,
              ),

              FocusText(
                  totalMonthlySpend: '$_totalCoins Points'
              ),


              const SizedBox(
                height: 8,
              ),


              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(()=>LeaderBoardScreen());
                      },
                      child: Card(
                        margin: const EdgeInsets.all(8),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        // color: Colors.white12,
                        color: Colors.grey[800],
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          // width: double.infinity,
                          height: MediaQuery.of(context).size.height / 6,
                          decoration: const BoxDecoration(
                              color: Colors.black12
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "5\u1d57\u02b0",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      // '5M CO\u2082eq',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Icon(Icons.circle,)
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Rank",
                                // 'Savings',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Card(
                      margin: const EdgeInsets.all(8),
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      // color: Colors.white12,
                      color: Colors.grey[800],
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        // width: double.infinity,
                        height: MediaQuery.of(context).size.height / 6,
                        decoration: const BoxDecoration(
                            color: Colors.black12
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "5423 ",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  // '5M CO\u2082eq',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.circle)
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Steps Walked",
                              // 'Savings',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              Container(
                child: GestureDetector(
                  onTap: () {
                    Get.to(()=>LeaderBoardScreen());
                  },
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    // color: Colors.white12,
                    color: Colors.grey[800],
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      // width: double.infinity,
                      height: MediaQuery.of(context).size.height / 6,
                      decoration: const BoxDecoration(
                          color: Colors.black12
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "${(_taskProgress*100).toStringAsFixed(0)}%",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              // '5M CO\u2082eq',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                              child: Container(
                                padding: EdgeInsets.all(8),
                                child: LinearPercentIndicator(
                                  lineHeight: 40,
                                  percent : _taskProgress,
                                  progressColor: Colors.green,
                                  backgroundColor: Colors.black87,
                                  animation: true,
                                  animationDuration: 1000,
                                  barRadius: Radius.circular(30),
                                ),
                              ),
                          ),
                          SizedBox(height: 2,),
                          Text(
                            "Current Progress",
                            // 'Savings',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),


              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                child: Text(
                  "Today's Tasks",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ),


              // Task Lists
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      // Task 1
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                title: Text('Task Title'),
                                content: MyTaskCard(
                                  id: 1,
                                    title: 'Watch an Ad',
                                  description: 'Learn something new about the environment today! In this app, we have curated videos on climate change, environmental protection, conservation and many more for your enjoyment and learning! Head on over to the reels content to start learning today!',
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        if(!task1Done && _taskProgress <=0.75) {
                                          setState(() {
                                            task1Done = true;
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
                                          task1Done = false;
                                          _totalCoins -= 150;
                                          if(_taskProgress>=0.25) {
                                            _taskProgress -= 0.25;
                                          }
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text('No'))
                                ],
                              ));
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
                                          "Walk | Related To walking" ,
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
                                    color: task1Done ? Colors.green : Colors.white,
                                  )
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


                      // Task 2
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                title: Text('Task Title 2'),
                                content: MyTaskCard(
                                  id: 2,
                                  title: 'Watch an Ad',
                                  description: 'Learn something new about the environment today! In this app, we have curated videos on climate change, environmental protection, conservation and many more for your enjoyment and learning! Head on over to the reels content to start learning today!',
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        if(!task2Done && _taskProgress <=0.75) {
                                          setState(() {
                                            task2Done = true;
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
                                          task2Done = false;
                                          _totalCoins -= 150;
                                          if(_taskProgress>=0.25) {
                                            _taskProgress -= 0.25;
                                          }
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text('No'))
                                ],
                              ));
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
                                          'Task 2',
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
                                      color: task2Done ? Colors.green : Colors.white,
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


                      // Task 3
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                title: Text('Task Title'),
                                content: MyTaskCard(
                                  id: 3,
                                  title: 'Watch an Ad',
                                  description: 'Learn something new about the environment today! In this app, we have curated videos on climate change, environmental protection, conservation and many more for your enjoyment and learning! Head on over to the reels content to start learning today!',
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        if(!task3Done && _taskProgress <=0.75) {
                                          setState(() {
                                            task3Done = true;
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
                                          task3Done = false;
                                          _totalCoins -= 150;
                                          if(_taskProgress>=0.25) {
                                            _taskProgress -= 0.25;
                                          }
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text('No'))
                                ],
                              ));
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
                                      color: task3Done ? Colors.green : Colors.white,
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


                      // Task 4
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                title: Text('Task Title'),
                                content: MyTaskCard(
                                  id: 3,
                                  title: 'Watch an Ad',
                                  description: 'Learn something new about the environment today! In this app, we have curated videos on climate change, environmental protection, conservation and many more for your enjoyment and learning! Head on over to the reels content to start learning today!',
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        if(!task3Done && _taskProgress <=0.75) {
                                          setState(() {
                                            task4Done = true;
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
                                          task4Done = false;
                                          _totalCoins -= 150;
                                          if(_taskProgress>=0.25) {
                                            _taskProgress -= 0.25;
                                          }
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text('No'))
                                ],
                              ));
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
                                          'Task 4',
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
                                      color: task4Done ? Colors.green : Colors.white,
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),





              // sample alertDialog button
              /*
              MaterialButton(
                onPressed: () {

                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('Task Title'),
                            content: Text(
                                ' Task Description \n Did you finish this task?',
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      taskDone = true;
                                      _totalCoins += 150;
                                    });

                                    Navigator.pop(context);
                                  },
                                  child: Text('Yes')),
                              TextButton(
                                  onPressed: () {

                                    setState(() {
                                      taskDone = false;
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Text('No'))
                            ],
                          ));
                },
                child: Text('Press me'),
              ),

               */

              // progress bar

              /*
              Container(
                padding: EdgeInsets.all(8),
                child: LinearPercentIndicator(
                  lineHeight: 40,
                  percent :0.45,
                  progressColor: Colors.grey[800],
                  backgroundColor: Colors.white,
                  animation: true,
                  animationDuration: 1000,
                  barRadius: Radius.circular(30),
                ),
              ),

               */

            ],
          ),
        ),
      ),
    );
  }
}

