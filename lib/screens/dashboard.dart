import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

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

    final double totalCFValue = 5000000;
    final double totalPoints = 5000;
    final String user = "John Doe";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Top Coins and Profile
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
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
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          user+" ",
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
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
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
              decoration: BoxDecoration(
                color: Colors.green
              ),
            ),

            const SizedBox(height: 8,),
            
          ],
        ),
      ),
    );
  }
}