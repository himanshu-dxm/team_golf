import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sih_team_golf/screens/gamesDashboard/components/leaderboard.dart';
import 'package:sih_team_golf/screens/gamesDashboard/components/singleTaskScreen.dart';


import 'components/focusText.dart';
import 'components/header.dart';


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
  double _taskProgress = 0.0;

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
                        Get.to(()=>const LeaderBoardScreen());
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
                          child: const Column(
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
                        child: const Column(
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
                    Get.to(()=>const LeaderBoardScreen());
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
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                child: LinearPercentIndicator(
                                  lineHeight: 40,
                                  percent : _taskProgress,
                                  progressColor: Colors.green,
                                  backgroundColor: Colors.black87,
                                  animation: true,
                                  animationDuration: 1000,
                                  barRadius: const Radius.circular(30),
                                ),
                              ),
                          ),
                          const SizedBox(height: 2,),
                          const Text(
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
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                child: const Text(
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

                      // Task 4
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                title: const Text('Cut Down Dairy Products'),
                                content: MyTaskCard(
                                  id: 4,
                                  title: 'Cut Down on Dairy Products',
                                  description: 'Dairy products are one of the most carbon intensive products due to change in land use, release of methane from cow’s digestion process and the use of pesticides and fertilizers for their food. \n\n\tDairy is 3x more carbon intensive than other plant-based milk!',
                                  trees: 0.1,
                                  carbonSaved: 2.2,
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        if(!task4Done && _taskProgress <=0.75) {
                                          setState(() {
                                            task4Done = true;
                                            _totalCoins += 150;
                                            _taskProgress += 0.25;
                                          });
                                        }

                                        Navigator.pop(context);
                                      },
                                      child: const Text('Yes')),
                                  TextButton(
                                      onPressed: () {

                                        setState(() {
                                          task4Done = false;

                                          if(_taskProgress>=0.25) {
                                            _totalCoins -= 150;
                                            _taskProgress -= 0.25;
                                          }
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: const Text('No'))
                                ],
                              ));
                        },
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(16)),

                                    ),
                                    child: const Center(
                                        child: Text(
                                          '+150 ',
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    // margin: EdgeInsets.all(8),
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Cut Dairy Products Usage',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                          ),
                                        ),
                                        Text(
                                          "Use Other Alternatives" ,
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
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.all(8),
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


                      // Task 1
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                title: const Text('Learn Something New'),
                                content: MyTaskCard(
                                  id: 1,
                                    title: 'Watch our reels',
                                  description: '\tLearn something new about the environment today! \n\n\tIn this app, we have curated videos on climate change, environmental protection, conservation and many more for your enjoyment and learning! \n\n\tHead on over to the reels content to start learning today!',
                                  trees: 0.1,
                                  carbonSaved: 0.1,
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
                                      child: const Text('Yes')),
                                  TextButton(
                                      onPressed: () {

                                        setState(() {
                                          task1Done = false;
                                           if(_taskProgress>=0.25) {
                                            _totalCoins -= 150;
                                            _taskProgress -= 0.25;
                                          }
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: const Text('No'))
                                ],
                              ));
                        },
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(16)),

                                    ),
                                    child: const Center(
                                      child: Text(
                                          '+150 ',
                                      )
                                    ),
                                  ),

                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    // margin: EdgeInsets.all(8),
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Learn Something New',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                          ),
                                        ),
                                        Text(
                                          "Go to our reels section",
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
                                  padding: const EdgeInsets.all(8),
                                  margin: const EdgeInsets.all(8),
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
                                title: const Text('Complete 7000 steps'),
                                content: MyTaskCard(
                                  id: 2,
                                  title: 'Go for Walk',
                                  description: 'Walking is a form of exercise which will be beneficial to your health and wellbeing! \n\n\tWhen you choose to walk, you are producing very little carbon footprint, making it the most environmentally friendly mode of transportation!',
                                  carbonSaved: 0.54,
                                  trees: 0.03,
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
                                      child: const Text('Yes')),
                                  TextButton(
                                      onPressed: () {

                                        setState(() {
                                          task2Done = false;
                                          if(_taskProgress>=0.25) {
                                            _totalCoins -= 150;
                                            _taskProgress -= 0.25;
                                          }
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: const Text('No'))
                                ],
                              ));
                        },
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(16)),

                                    ),
                                    child: const Center(
                                        child: Text(
                                          '+150 ',
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    // margin: EdgeInsets.all(8),
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Walking',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                          ),
                                        ),
                                        Text(
                                          "Go out for a walk" ,
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
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.all(8),
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
                                title: const Text('Air Dry Clothes'),
                                content: MyTaskCard(
                                  id: 3,
                                  title: 'Air Dry Clothes',
                                  description: 'Air drying your clothes is beneficial to the environment! \n\n\tBy not using the dryer, you will save energy, money and even extend the lifespan of your clothes. \n\n\tAir drying will give you more bang for your buck',
                                  carbonSaved: 3,
                                  trees: 0.14,
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
                                      child: const Text('Yes')),
                                  TextButton(
                                      onPressed: () {

                                        setState(() {
                                          task3Done = false;
                                          if(_taskProgress>=0.25) {
                                            _totalCoins -= 150;
                                            _taskProgress -= 0.25;
                                          }
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: const Text('No'))
                                ],
                              ));
                        },
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(16)),

                                    ),
                                    child: const Center(
                                        child: Text(
                                          '+150 ',
                                        )
                                    ),
                                  ),

                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    // margin: EdgeInsets.all(8),
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Air Dry Clothes',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                          ),
                                        ),
                                        Text(
                                          "Dry your clothes in air" ,
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
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.all(8),
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

