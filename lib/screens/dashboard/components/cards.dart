import 'package:flutter/material.dart';

class StatCards {
  static Widget card(BuildContext context, String focusText, String description, String extraText) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        color: Colors.black,

      ),
      child: Column(
        children: [
          Text(
            focusText,
            style: TextStyle(
              color: Colors.white
            ),
          ),
          Text(description)
        ],
      ),
    );
  }
}