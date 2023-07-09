import 'package:flutter/material.dart';

class FocusText extends StatelessWidget {
  final String totalMonthlySpend;
  FocusText({super.key, required this.totalMonthlySpend});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          // margin: EdgeInsets.all(8),
          // padding: EdgeInsets.all(8),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            this.totalMonthlySpend,
            // '12,524 C0\u2082 Kg ',
            style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: const Text(
            'Spend this month',
            style: TextStyle(color: Colors.white60),
          ),
        ),
      ],
    );
  }
}
