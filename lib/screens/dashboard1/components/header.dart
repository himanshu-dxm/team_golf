import 'package:flutter/material.dart';

import '../../../services/auth.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset("assets/icon/foot.png",
                  scale: 3,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'A Greener future starts',
                    style: TextStyle(color: Colors.green,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'With You',
                    style: TextStyle(color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ],
          ),

          GestureDetector(
            onTap: () {
              AuthenticationRepository.instance.logout();
            },
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(Radius.circular(18))),
                child: const Icon(
                  Icons.logout_rounded,
                  size: 32,
                  color: Colors.black,
                )),
          ),
        ],
      ),
    );
  }
}
