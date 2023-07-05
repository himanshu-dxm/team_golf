import 'package:flutter/material.dart';
import 'package:sih_team_golf/utilities/themes.dart';

import '../../../utilities/commonStyles.dart';

class Header {
  static Widget header(BuildContext context , double totalPoints , String username) {
    return Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(4),
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // TODO : To make profile option
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.lightGreen,Colors.green],
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                  ),
                // color: MyColors.primaryColor,
                border: Border.all(width: 3),
                borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurStyle: BlurStyle.solid,
                        blurRadius: 8
                    )
                  ]
              ),
              child: GestureDetector(
                onTap: () {
                  print("Profile Tapped");
                  CommonStyles.snackBar(context, "Not Functional Yet");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Icon(
                        Icons.account_circle_outlined
                      )
                    ),
                    SizedBox(width: 2,),
                    Text(
                      "$username ",
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),
            ),

            // Points
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  // color: MyColors.primaryColor,
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    blurStyle: BlurStyle.solid,
                    blurRadius: 8
                  )
                ],
                  gradient: LinearGradient(
                    colors: [Colors.lightGreen,Colors.green],
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    totalPoints.toString(),
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  // TODO : Add Coin or Out Token Image
                  Icon(Icons.currency_bitcoin)
                ],
              ),
            ),

          ],
        )
    );
  }

}