import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../model/Product.dart';
import '../../../utilities/size_config.dart';
import '../../productCFDetail/productCFDetail.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.only(
                  left: getProportionateScreenWidth(20),
                right: getProportionateScreenWidth(20),
                top: getProportionateScreenWidth(10)
              ),
          child: Text(product.productName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold)
              // style: Theme.of(context).textTheme.titleLarge,
              ),
        ),

        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            "Product Description : ${product.description}",
            maxLines: 3,
            style: TextStyle(
                color: Colors.white70,
                fontSize: 24,
                fontStyle: FontStyle.italic),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              // color:  Color(0xFFFFE6E6),
              // Color(0xFFF5F6F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              "assets/icon/Heart Icon_2.svg",
              color: Color(0xFFFF4848),
              height: getProportionateScreenWidth(16),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {
              // ProductCF(product: this.product);
              Navigator.push(

                  context,
                  MaterialPageRoute(builder: (ctx) =>
                  ProductCF(
                    manufacturingSpends: product.totalCarbon*0.29,
                    logisticsSpends: product.totalCarbon*0.37,
                    totalCarbon: product.totalCarbon,
                    productName: product.productName,
                    packagingSpends: product.totalCarbon*0.15,
                  )
                  )
              );
            },
            child: Row(
              children: [
                Text(
                  "See More Detail",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white70,
                    fontSize: 18
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.white70,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
            top: getProportionateScreenHeight(16),
          ),
          child: Text(
            "Total Carbon  : ${product.totalCarbon}",
            maxLines: 3,
            style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
        ),

      ],
    );
  }
}