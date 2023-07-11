import 'package:flutter/material.dart';

class StackedChart extends StatelessWidget {
  final double total,manufacturing,logistics,packaging,others;

  StackedChart({
    super.key,
    required this.total,
    required this.manufacturing,
    required this.logistics,
    required this.packaging,
    required this.others
  });

  @override
  Widget build(BuildContext context) {

    List<double> acc = [total, manufacturing, logistics, packaging, others];
    List<Color> col = [
      Colors.green,
      Colors.blue,
      Colors.orange,
      Colors.red,
      Colors.pink
    ];

    getSum() {
      return acc.reduce((a, b) => a + b);
    }

    getAccAver(int index) {
      print(acc[index] / acc[0] * 100);
      return (acc[index] / acc[0] * 100).toInt();
    }

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        // height for controlling the chart height
        height: 25,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            for (var i = 1; i < acc.length; i++)
              CardAccAve(
                percentage: getAccAver(i),
                leftBorder: i == 1 ? 10 : 0,
                rightBorder: i == acc.length - 1 ? 10 : 0,
                color: col[i],
              ),
          ],
        ),
      ),
    );
  }
}

class CardAccAve extends StatelessWidget {
  CardAccAve({
    Key? key,
    required this.leftBorder,
    required this.rightBorder,
    required this.percentage,
    required this.color,
  }) : super(key: key);
  double leftBorder;
  double rightBorder;
  final int percentage;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: percentage,
      child: SizedBox(
        height: 20,
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
          color: color,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(leftBorder),
              topLeft: Radius.circular(leftBorder),
              bottomRight: Radius.circular(rightBorder),
              topRight: Radius.circular(rightBorder),
            ),
          ),
        ),
      ),
    );
  }
}

