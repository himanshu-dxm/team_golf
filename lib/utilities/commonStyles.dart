// This class is for common styles used throughout app
// Need to configure primary colour , theme

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class CommonStyles {
  static textFieldStyle(String hint) {
    return InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white,
                width: 2
            )
        )
    );
  }
  static snackBar(BuildContext context,String snackText) {
    return SnackBar(
      action: SnackBarAction(
        label: 'Done',
        onPressed: () {},
      ),
      content: Text(snackText),
      duration: const Duration(milliseconds: 3500),
      width: MediaQuery.of(context).size.width*0.9,
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }

  static roundButton(BuildContext context,String text) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [
                Color(0xff07EF4),
                Color(0xff2A75BC)
              ]
          ),
          border: Border.all(
              color: Colors.red
          ),
          borderRadius: const BorderRadius.all(Radius.circular(50))
      ),
      // margin: EdgeInsets.only(left: 50,right: 50,top: 30),
      // width: 100,
      // height: 50,
      width: MediaQuery.of(context).size.width*0.70,
      padding: const EdgeInsets.symmetric(vertical: 18,),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
              color: Colors.white
          ),
          // style: GoogleFonts.lato(
          //     textStyle: TextStyle(
          //       fontSize: 18,
          //       fontWeight: FontWeight.w500,
          //       color: Colors.yellowAccent,
          //       // backgroundColor: Colors.white,
          //     )
          // ),
        ),
      ),
    );
  }

  static notificationCard(BuildContext context,String message,String desc) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.album),
              title: Text(
                message,
              ),
              subtitle: Text(desc),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Check Details'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Delete'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}