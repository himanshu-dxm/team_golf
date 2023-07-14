import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:sih_team_golf/screens/gamesDashboard/components/couponCard.dart';


class VouchersPage extends StatefulWidget {
  const VouchersPage({super.key});

  @override
  State<VouchersPage> createState() => _VouchersPageState();
}

class _VouchersPageState extends State<VouchersPage> {
  Color primaryColor = Color(0xfff1e3d3);
  Color secondaryColor = Color(0xffd88c9a);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coupons With you'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCouponCard(
                    couponCode: 'FREESALES',
                    discount: 23,
                    pointsConsumed: 150,
                  title: 'Winter Is \nHere',
                ),
                MyCouponCard(
                    couponCode: 'Swiggy',
                    discount: 60,
                    pointsConsumed: 300,
                  title: "Let's Eat"
                ),
                MyCouponCard(
                    couponCode: 'Puma',
                    discount: 15,
                    pointsConsumed: 180,
                  title: "Let's Run",
                ),

              ],
            )));
  }
}