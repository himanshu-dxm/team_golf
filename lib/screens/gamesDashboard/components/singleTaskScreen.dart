import 'package:flutter/material.dart';

class MyTaskCard extends StatelessWidget {
  String title,description;
  MyTaskCard({
    super.key,
    required this.title,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/books.jpg")
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text('$title'),
            ),
            Container(
              child: Text('$description'),
            ),
            Container(
              child: Text('Did you Complete The task?'),
            )
          ],
        ),
      ),
    );
  }
}
