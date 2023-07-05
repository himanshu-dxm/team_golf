import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:sih_team_golf/screens/dashboard/components/cards.dart';
import 'package:sih_team_golf/screens/dashboard/components/chart.dart';
import 'package:sih_team_golf/screens/dashboard/components/header.dart';
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
    };

    double totalCFValue = 5000000;
    double totalPoints = 5000;
    String user = "John Doe";
    int rank = 5;
    double carbonEmissionSavingPercent = 65;
    double carbonEmissionAmount = 50;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Dashboard'),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(

          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white10
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Top Coins and Profile
                Header.header(context , totalPoints, user),

                // Pie Chart
                Chart.pie(context,dataMap),

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

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StatCards.card(context, rank.toString()+"th", "Position", "+1 from yesterday"),

                    StatCards.card(context, carbonEmissionAmount.toString()+"Kg", "CO2 emitted", "56% increase since last month"),
                  ],
                ),

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
                //                 fontWeight: FontWeight.bold,
                //                 fontSize: 32,
                //                 color: Colors.green
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

              ],
            ),
          ),

        ),
      ),
    );
  }
}