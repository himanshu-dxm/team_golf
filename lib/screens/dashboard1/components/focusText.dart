import 'package:flutter/material.dart';

class FocusText extends StatelessWidget {
  final String totalMonthlySpend;
  final String equivalentCoal;
  FocusText({
    super.key,
    required this.totalMonthlySpend,
    required this.equivalentCoal
  });

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
          child: Row(
            children: [
              Text(
                'Equivalent to ',
                style: TextStyle(color: Colors.white60),
              ),
              Text(
                '${equivalentCoal} Kg',
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,),
              ),
              Text(
                ' of Coal burnt',
                style: TextStyle(color: Colors.white60),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
