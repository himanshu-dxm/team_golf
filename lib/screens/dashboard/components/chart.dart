import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../../utilities/themes.dart';

class Chart {

  static final List<Color> _colorList = [
    const Color(0xffD95AF3),
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFA4A42),
    const Color(0xffFE9539)
  ];

  static final _gradientList = <List<Color>>[
    [
      const Color.fromRGBO(223, 250, 92, 1),
      const Color.fromRGBO(129, 250, 112, 1),
    ],
    [
      const Color.fromRGBO(129, 182, 205, 1),
      const Color.fromRGBO(91, 253, 199, 1),
    ],
    [
      const Color.fromRGBO(175, 63, 62, 1.0),
      const Color.fromRGBO(254, 154, 92, 1),
    ]
  ];

  static Widget pie(BuildContext context, Map<String, double> dataMap ,) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [
            BoxShadow(
                blurStyle: BlurStyle.solid,
                blurRadius: 8
            )
          ]
      ),
      child: Center(
        child: PieChart(
          dataMap: dataMap,

          colorList: _colorList,

          chartRadius: MediaQuery.of(context).size.width / 2,

          ringStrokeWidth: 24,

          animationDuration: const Duration(seconds: 3),

          // chartLegendSpacing: 40,

          chartType: ChartType.ring,

          centerText: "5M+ of\nSaved Carbon Emission",

          centerTextStyle: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w600
          ),

          legendOptions: const LegendOptions(
            showLegendsInRow: true,
            legendPosition: LegendPosition.bottom,
            showLegends: true,
            legendShape: BoxShape.rectangle,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white54
            ),
          ),
          chartValuesOptions: const ChartValuesOptions(
            showChartValueBackground: false,
            showChartValues: true,
            showChartValuesInPercentage: true,
            showChartValuesOutside: true,
            decimalPlaces: 2,
          ),
          gradientList: _gradientList,
          baseChartColor: Colors.white,
          chartLegendSpacing: 32,
        ),
      ),
    );
  }

}