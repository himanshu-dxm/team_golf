import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih_team_golf/screens/gamesDashboard/components/leaderboard.dart';


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Some App Motto and tagline',
            style: TextStyle(color: Colors.green),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LeaderBoardScreen()));
            },
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(Radius.circular(18))),
                child: const Icon(
                  Icons.account_circle,
                  size: 32,
                  color: Colors.black,
                )),
          )
        ],
      ),
    );
  }
}
