import 'package:flutter/material.dart';

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
          Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.all(Radius.circular(18))),
              child: const Icon(
                Icons.account_circle,
                size: 32,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
