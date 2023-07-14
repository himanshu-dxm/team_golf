import 'package:flutter/material.dart';
import 'package:coupon_uikit/coupon_uikit.dart';

class MyCouponCard extends StatelessWidget {
  final int discount;
  final String couponCode;
  final String title;
  final int pointsConsumed;

  MyCouponCard({
    super.key,
    required this.couponCode,
    required this.discount,
    required this.pointsConsumed,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        child: CouponCard(
          height: 180,
          backgroundColor: Color(0xfff1e3d3),
          clockwise: true,
          curvePosition: 135,
          curveRadius: 30,
          curveAxis: Axis.vertical,
          borderRadius: 10,
          firstChild: Container(
            decoration: const BoxDecoration(
              color: Color(0xffd88c9a),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${discount} %',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'OFF',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(color: Colors.white54, height: 0),
                Expanded(
                  child: Center(
                    child: Text(
                      '${title}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          secondChild: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coupon Code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '$couponCode',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xffd88c9a),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  'Redeem points : ${pointsConsumed}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
