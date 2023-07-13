import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sih_team_golf/screens/gamesDashboard/leaderboard.dart';


import 'components/focusText.dart';
import 'components/header.dart';
import 'components/topCard.dart';


class GamesDashboard extends StatefulWidget {
  const GamesDashboard({super.key});

  @override
  State<GamesDashboard> createState() => _GamesDashboardState();
}

class _GamesDashboardState extends State<GamesDashboard> {
  
  // final controller = Get.put(TransactionController());

  double _totalCoins = 10000;
  double _totalCoinsSpent = 1000;
  double tmp=1000;


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
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(color: Colors.black87),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Coins and Profile
                // Header.header(context , 1000, "Hello"),

                Header(),


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
                                    Icon(Icons.circle)
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
                                "45%",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                // '5M CO\u2082eq',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: LinearPercentIndicator(
                                    lineHeight: 40,
                                    percent :0.45,
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
                /*

                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TopCard(
                        value: '5th',
                        heading: 'Leaderboard Rank'
                    ),

                    TopCard(
                        value: '50% Complete',
                        heading: 'Today\'s Tasks'
                    ),
                  ],
                ),

                 */


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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
