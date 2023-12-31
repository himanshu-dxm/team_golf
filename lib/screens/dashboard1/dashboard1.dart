import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih_team_golf/helper/controller/transaction_controller.dart';
import 'package:sih_team_golf/model/user.dart';
import 'package:sih_team_golf/screens/dashboard1/components/centralCard.dart';
import 'package:sih_team_golf/screens/dashboard1/components/focusText.dart';
import 'package:sih_team_golf/screens/dashboard1/components/topCard.dart';
import 'package:sih_team_golf/screens/dashboard1/components/transactionCard.dart';

import '../../model/Product.dart';
import 'components/header.dart';


class Dashboard1 extends StatefulWidget {
  const Dashboard1({super.key});

  @override
  State<Dashboard1> createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  
  final controller = Get.put(TransactionController());

  int _indexHorizontal = 0;
  double _totalCarbonSpent = 0.0;
  double _totalCarbonOverall = 10.0;
  double tmp=1000;


  @override
  void initState() {
    calculateTotal();
  }

  void calculateTotal() async {
    _totalCarbonSpent += await controller.getTotalCarbon(UserUID.userUID);
    _totalCarbonOverall += _totalCarbonSpent;
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
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

                FocusText(
                    totalMonthlySpend: '${_totalCarbonSpent.toStringAsFixed(3)} KgCO\u2082eq',
                  equivalentCoal: (_totalCarbonSpent/1.968).toStringAsFixed(2).toString(),
                ),


                const SizedBox(
                  height: 8,
                ),


                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TopCard(
                        value: '5237',
                        heading: 'Green Earnings'
                    ),

                    TopCard(
                        value: '${_totalCarbonOverall.toStringAsFixed(3)} Kg',
                        heading: 'Total Spends'
                    ),
                  ],
                ),

                // TODO : Horizontal Scroll Design
                CenterCards(totalCarbon: _totalCarbonOverall),


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
                            "Your Green Journey",
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
                    FutureBuilder<List<Product>>(
                      builder: (context, snapshot) {
                        if(snapshot.connectionState == ConnectionState.done) {
                          if(snapshot.hasData) {

                            // List<Product> product = snapshot.data as List<Product>;
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (c, index) {
                                return Column(
                                  children: [

                                    TransactionCard(
                                        carbonAmount: snapshot.data![index].totalCarbon,
                                        title: snapshot.data![index].productName,
                                        category: snapshot.data![index].description,
                                        date: snapshot.data![index].weight.toString(),
                                        productImage: snapshot.data![index].productImage,
                                    ),

                                  ],
                                );
                              }
                            );
                          } else if (snapshot.hasError) {
                            return Center(
                              child: Text(snapshot.error.toString()),
                            );
                          } else {
                            return Center(
                              child: Text('Something Went Wrong!'),
                            );
                          }
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }, future: controller.getTransaction(UserUID.userUID)
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
