import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih_team_golf/screens/gamesDashboard/components/leaderboard.dart';
import 'package:sih_team_golf/screens/gamesDashboard/components/vouchersPage.dart';


class Header extends StatelessWidget {
  double totalCoins;
  Header({super.key,required this.totalCoins});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Play and Earn Here',
            style: TextStyle(color: Colors.green,fontSize: 24),
          ),
          GestureDetector(
            onTap: () {
              Get.to(()=>VouchersPage());
              // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LeaderBoardScreen()));
            },
            child: Container(
              padding: EdgeInsets.all(4),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(Radius.circular(18))
                ),
                child: const Icon(
                    IconData(0xf06bd, fontFamily: 'MaterialIcons'),
                  color: Colors.black87,
                  )
            ),
                // child: const Icon(
                //   Icons.account_circle,
                //   size: 32,
                //   color: Colors.black,
                // )),
          )
        ],
      ),
    );
  }
}
