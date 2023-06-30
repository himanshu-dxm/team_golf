import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:sih_team_golf/utilities/commonStyles.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Item 1": 42.9,
      "Item 2": 13.3,
      "item 3": 15.3,
      "item 4": 20.3,
      "Item 5": 8.2
    };

    double totalCFValue = 5000000;
    double totalPoints = 5000;
    String user = "John Doe";
    int rank = 5;
    double carbonEmissionSavingPercent = 65;
    double carbonEmissionAmount = 50;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Top Coins and Profile
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        totalPoints.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      // TODO : Add Coin or Out Token Image
                      Icon(Icons.currency_bitcoin)
                    ],
                  ),
                  // TODO : To make profile option
                  GestureDetector(
                    onTap: () {
                      print("Profile Tapped");
                      CommonStyles.snackBar(context, "Not Functional Yet");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "$user ",
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const Icon(Icons.account_circle_outlined)
                      ],
                    ),
                  )
                ],
              )
            ),

            const SizedBox(height: 8,),

            // Pie Chart
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              child: PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 4000),
                chartLegendSpacing: 40,
                chartRadius: MediaQuery.of(context).size.width /2,
                // chartRadius: MediaQuery.of(context).size.width / 3.2,
                // colorList: colorList,
                // initialAngleInDegree: 45,
                chartType: ChartType.ring,
                ringStrokeWidth: 24,
                centerText: "5M+ of\nSaved Carbon Emission",
                centerTextStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                ),
                legendOptions: const LegendOptions(
                  showLegendsInRow: false,
                  legendPosition: LegendPosition.right,
                  showLegends: true,
                  // legendShape: _BoxShape.circle,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValueBackground: false,
                  showChartValues: true,
                  showChartValuesInPercentage: true,
                  showChartValuesOutside: true,
                  decimalPlaces: 2,
                ),
              ),
            ),

            const SizedBox(height: 8,),

            // Green Line
            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: 5,
              decoration: const BoxDecoration(
                color: Colors.green
              ),
            ),

            const SizedBox(height: 8,),

            // Plain Texts
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       margin: const EdgeInsets.all(8),
            //       padding: const EdgeInsets.all(8),
            //       child: Row(
            //         // mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             "${rank}th",
            //             style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               fontSize: 32,
            //               color: Colors.green
            //             ),
            //           ),
            //           SizedBox(width: 8,),
            //           Expanded(
            //             child: Text(
            //               "Rank in leaederboard",
            //               style: TextStyle(
            //                 fontSize: 24,
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     const SizedBox(height: 8,),
            //     Container(
            //       margin: const EdgeInsets.all(8),
            //       padding: const EdgeInsets.all(8),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             "$carbonEmissionSavingPercent%",
            //             style: TextStyle(
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: 32,
            //                 color: Colors.green
            //             ),
            //           ),
            //           SizedBox(width: 8,),
            //           Expanded(
            //             child: Text(
            //               "Increases in Carbon Emission Saving",
            //               style: TextStyle(
            //                 fontSize: 24,
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     const SizedBox(height: 8,),
            //     Container(
            //       margin: const EdgeInsets.all(8),
            //       padding: const EdgeInsets.all(8),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             "$carbonEmissionAmount Kg",
            //             style: TextStyle(
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: 32,
            //                 color: Colors.green
            //             ),
            //           ),
            //           SizedBox(width: 8,),
            //           Expanded(
            //             child: Text(
            //               "Amount of carbon footprint emitted",
            //               style: TextStyle(
            //                 fontSize: 24,
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     const SizedBox(height: 8,),
            //   ],
            // ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${rank}th",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.green
                        ),
                      ),
                      SizedBox(width: 8,),
                      Expanded(
                        child: Text(
                          "Rank in leaederboard",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$carbonEmissionSavingPercent%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.green
                        ),
                      ),
                      SizedBox(width: 8,),
                      Expanded(
                        child: Text(
                          "Increases in Carbon Emission Saving",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$carbonEmissionAmount Kg",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.green
                        ),
                      ),
                      SizedBox(width: 8,),
                      Expanded(
                        child: Text(
                          "Amount of carbon footprint emitted",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
              ],
            ),

          ],
        ),



      ),
    );
  }
}