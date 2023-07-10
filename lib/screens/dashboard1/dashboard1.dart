import 'package:flutter/material.dart';
import 'package:sih_team_golf/screens/dashboard1/components/centralCard.dart';
import 'package:sih_team_golf/screens/dashboard1/components/focusText.dart';
import 'package:sih_team_golf/screens/dashboard1/components/topCard.dart';
import 'package:sih_team_golf/screens/dashboard1/components/transactionCard.dart';

import 'components/header.dart';


class Dashboard1 extends StatefulWidget {
  const Dashboard1({super.key});

  @override
  State<Dashboard1> createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {

  int _indexHorizontal = 0;

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

                FocusText(totalMonthlySpend: '12,524 C0\u2082 Kg'),


                const SizedBox(
                  height: 8,
                ),


                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TopCard(
                        value: '5000',
                        heading: 'Carbonify Coins'
                    ),

                    TopCard(
                        value: '5M+ ',
                        heading: 'Total Spends'
                    ),
                  ],
                ),

                // TODO : Horizontal Scroll Design
                CenterCards(),


                // Transactions and View more Row

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
                            "Transactions",
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
                    Column(
                      children: [

                        TransactionCard(
                            carbonAmount: 3.99,
                            title: 'Apple',
                            category: 'Phone',
                            date: '6 Sep'
                        ),
                        TransactionCard(
                            carbonAmount: 3.99,
                            title: 'Apple',
                            category: 'Phone',
                            date: '6 Sep'
                        ),
                        TransactionCard(
                            carbonAmount: 3.99,
                            title: 'Apple',
                            category: 'Phone',
                            date: '6 Sep'
                        ),
                        TransactionCard(
                            carbonAmount: 3.99,
                            title: 'Apple',
                            category: 'Phone',
                            date: '6 Sep'
                        ),
                        TransactionCard(
                            carbonAmount: 3.99,
                            title: 'Apple',
                            category: 'Phone',
                            date: '6 Sep'
                        ),


                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
