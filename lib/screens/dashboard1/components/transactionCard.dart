import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final double carbonAmount;
  final String title,category,date;
  final String productImage;
  const TransactionCard({
    super.key,
    required this.carbonAmount,
    required this.title,
    required this.category,
    required this.date,
    required this.productImage
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width*0.95,
      decoration: BoxDecoration(
          color: Colors.grey[800],
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
                  child: Image.network(productImage,scale: 10,),
                  // child: Icon(
                  //   Icons.apple,
                  //   color: Colors.white,
                  //   size: 40,),
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
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),
                    ),
                    Text(
                      "$date | $category",
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
              carbonAmount.toStringAsFixed(3).toString()+" Kg",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
              ),
            ),
          )
        ],
      ),
    );
  }
}
