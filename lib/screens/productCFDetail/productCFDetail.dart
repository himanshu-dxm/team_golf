import 'package:flutter/material.dart';

import '../../model/Product.dart';

class ProductCF extends StatelessWidget {
  Product product;
  ProductCF({super.key, required this.product});

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _title('Product Name \n   CF Details'),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ChartLine(title: 'Transportation', value: 3, rate: 1),
                        ChartLine(title: 'Energy Usage', value: 2.5, rate: 0.66),
                        ChartLine(title: 'Raw Material', value: 1, rate: 0.3)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

  Widget _title(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 4),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

class ChartLine extends StatelessWidget {
  const ChartLine({
    Key? key,
    required this.rate,
    required this.title,
    required this.value,
    // this.number,
  })  : assert(title != null),
        assert(rate != null),
        assert(rate > 0),
        assert(rate <= 1),
        super(key: key);

  final double rate;
  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final lineWidget = constraints.maxWidth * rate;
      return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(minWidth: lineWidget),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    if (value != null)
                      Text(
                        value.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 60,
              width: lineWidget,
            ),
          ],
        ),
      );
    });
  }
}