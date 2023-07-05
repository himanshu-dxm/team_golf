import 'package:flutter/material.dart';

class StatCards {
  static Widget card(BuildContext context, String focusText, String description, String extraText) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      color: Colors.black,
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 7,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.greenAccent,Colors.green],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          )
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              focusText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 2,),
            Text(
              description,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
                fontStyle: FontStyle.italic
              ),
            ),
            // SizedBox(height: 2,),
            Text(
              extraText,
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

/*
margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width / 3,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(24)
        )
      ),
* */