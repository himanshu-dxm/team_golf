import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                    TopCard(
                        value: '5000',
                        heading: 'Total Steps Walked'
                    ),

                    TopCard(
                        value: '${_totalCoinsSpent} Points',
                        heading: 'Total Spends'
                    ),
                  ],
                ),

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
                                        "value",
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
                                  "heading",
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
                                    "value",
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
                                "heading",
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



                // TODO : Horizontal Scroll Design
                // CenterCards(),


                // Transactions and View more Row

                /*

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // Heading
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Products Bought",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(width: 8,),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                color: Colors.white
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))

                            ),
                            child: Text(
                              "View more",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8,),
                    // List
                    FutureBuilder<List<Product>>(
                      builder: (context, snapshot) {
                        if(snapshot.connectionState == ConnectionState.done) {
                          if(snapshot.hasData) {

                            // List<Product> product = snapshot.data as List<Product>;
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (c, index) {
                                return Column(
                                  children: [

                                    TransactionCard(
                                        carbonAmount: snapshot.data![index].totalCarbon,
                                        title: snapshot.data![index].productName,
                                        category: snapshot.data![index].description,
                                        date: snapshot.data![index].weight.toString()
                                    ),

                                  ],
                                );
                              }
                            );
                          } else if (snapshot.hasError) {
                            return Center(
                              child: Text(snapshot.error.toString()),
                            );
                          } else {
                            return Center(
                              child: Text('Something Went Wrong!'),
                            );
                          }
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }, future: controller.getTransaction()
                    ),
                  ],
                ),

                 */

              ],
            ),
          ),
        ),
      ),
    );
  }
}
