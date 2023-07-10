import 'package:flutter/material.dart';
import 'package:sih_team_golf/screens/productCFDetail/productCFDetail.dart';

import '../../../model/Product.dart';
import '../../../utilities/size_config.dart';
import 'color_dots.dart';
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
          color: Colors.grey[700]!,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {
                  print("See More Tapped");
                  // ProductCF(product: this.product,);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (ctx) => ProductCF(product: this.product))
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
                      bottom: getProportionateScreenWidth(50),
                      top: getProportionateScreenWidth(20),
                    ),
                    child: DefaultButton(
                      text: "Buy",
                      press: () {

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