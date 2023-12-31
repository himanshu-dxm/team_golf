import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih_team_golf/helper/controller/transaction_controller.dart';
import 'package:sih_team_golf/screens/homeScreen.dart';
import 'package:sih_team_golf/screens/productCFDetail/productCFDetail.dart';

import '../../../model/Product.dart';
import '../../../utilities/size_config.dart';
import 'default_button.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.black87,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {
                  print("See More Tapped");
                  // ProductCF(product: this.product,);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (ctx) =>
                          ProductCF(
                            manufacturingSpends: product.totalCarbon*0.29,
                            logisticsSpends: product.totalCarbon*0.37,
                            totalCarbon: product.totalCarbon,
                            productName: product.productName,
                            packagingSpends: product.totalCarbon*0.15,
                            water: product.water,
                            carbonOffset: product.carbonOffset,
                          )
                      )
                  );
                },
              ),
              /*
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (ctx) => ProductCF(product: this.product))
                    );
                  },
                  child: Text('Check Carbon Footprints!')
              ),

               */

              Column(
                children: [
                  // ColorDots(product: product),
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.15,
                      right: SizeConfig.screenWidth * 0.15,
                      bottom: getProportionateScreenWidth(70),
                      top: getProportionateScreenWidth(30),
                    ),
                    child: DefaultButton(
                      text: "Click if you bought this",
                      press: () {
                        print("Buy Tapped");
                        TransactionController.
                        instance.
                        createTransaction(product).
                        whenComplete(
                                () {
                                  print("Transaction Added ");
                                  Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (ctx)=>HomeScreen())
                                  );
                                  // Get.to(() => const HomeScreen());
                                }
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}