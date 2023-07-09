import 'package:flutter/material.dart';

import '../dashboard/components/cards.dart';
import '../dashboard/components/chart.dart';
import '../dashboard/components/header.dart';

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
      // appBar: AppBar(
      //   title: const Text('Dashboard'),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(color: Colors.black87),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Coins and Profile
                // Header.header(context , 1000, "Hello"),

                Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Some App Motto and tagline',
                        style: TextStyle(color: Colors.green),
                      ),
                      Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18))),
                          child: const Icon(
                            Icons.account_circle,
                            size: 32,
                          ))
                    ],
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),

                // Green Line
                Container(
                  alignment: Alignment.centerLeft,
                  // margin: EdgeInsets.all(8),
                  // padding: EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: const Text(
                    '12,524 C0\u2082 Kg ',
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

                const SizedBox(
                  height: 8,
                ),

                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Card(
                        margin: const EdgeInsets.all(8),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        color: Colors.white12,
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          // width: double.infinity,
                          height: MediaQuery.of(context).size.height / 6,
                          decoration: const BoxDecoration(
                            color: Colors.black12
                          ),
                          padding: const EdgeInsets.all(8),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '5M CO\u2082eq',
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
                                'Savings',
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
                    Expanded(
                      child: Card(
                        margin: const EdgeInsets.all(8),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        color: Colors.white12,
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          // width: double.infinity,
                          height: MediaQuery.of(context).size.height / 6,
                          decoration: const BoxDecoration(
                              color: Colors.black12
                          ),
                          padding: const EdgeInsets.all(8),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '5M+ ',
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
                                'Overall Spending',
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
            /*
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.black12
                  ),
                  child: SizedBox(
                    height: 100,
                    child: PageView.builder(
                      controller: PageController(viewportFraction: 0.7),
                        itemCount: 6,
                        onPageChanged: (int index) => setState(() {
                          _indexHorizontal = index;
                        }),
                        itemBuilder: (_, i) {
                          return Transform.scale(
                            scale: i == _indexHorizontal ?1 : 0,
                            child: Card(
                              elevation: 6,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                        'Amount',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold)
                                    ),
                                    Text(
                                        'Category',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 18,
                                        fontStyle: FontStyle.italic),


                                    )

                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                ),

                */
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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

                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                        borderRadius: BorderRadius.all(Radius.circular(16)),

                                    ),
                                      child: Center(
                                        child: Icon(
                                          Icons.apple,
                                          color: Colors.white,
                                          size: 40,),
                                      ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(8),
                                    // margin: EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            'Title',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18
                                          ),
                                        ),
                                        Text(
                                          '6 Sep | Services',
                                          style: TextStyle(
                                            color: Colors.white60
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(8),
                                child: Text(
                                  '-\$3.99',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(16)),

                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.apple,
                                        color: Colors.white,
                                        size: 40,),
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(8),
                                    // margin: EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Title',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                          ),
                                        ),
                                        Text(
                                          '6 Sep | Services',
                                          style: TextStyle(
                                              color: Colors.white60
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(8),
                                child: Text(
                                  '-\$3.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(16)),

                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.apple,
                                        color: Colors.white,
                                        size: 40,),
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(8),
                                    // margin: EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Title',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                          ),
                                        ),
                                        Text(
                                          '6 Sep | Services',
                                          style: TextStyle(
                                              color: Colors.white60
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(8),
                                child: Text(
                                  '-\$3.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(16)),

                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.apple,
                                        color: Colors.white,
                                        size: 40,),
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(8),
                                    // margin: EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Title',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                          ),
                                        ),
                                        Text(
                                          '6 Sep | Services',
                                          style: TextStyle(
                                              color: Colors.white60
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(8),
                                child: Text(
                                  '-\$3.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(16)),

                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.apple,
                                        color: Colors.white,
                                        size: 40,),
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(8),
                                    // margin: EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Title',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                          ),
                                        ),
                                        Text(
                                          '6 Sep | Services',
                                          style: TextStyle(
                                              color: Colors.white60
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(8),
                                child: Text(
                                  '-\$3.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(16)),

                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.apple,
                                        color: Colors.white,
                                        size: 40,),
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(8),
                                    // margin: EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Title',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                          ),
                                        ),
                                        Text(
                                          '6 Sep | Services',
                                          style: TextStyle(
                                              color: Colors.white60
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(8),
                                child: Text(
                                  '-\$3.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(16)),

                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.apple,
                                        color: Colors.white,
                                        size: 40,),
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(8),
                                    // margin: EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Title',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                          ),
                                        ),
                                        Text(
                                          '6 Sep | Services',
                                          style: TextStyle(
                                              color: Colors.white60
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(8),
                                child: Text(
                                  '-\$3.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18
                                  ),
                                ),
                              )
                            ],
                          ),
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
