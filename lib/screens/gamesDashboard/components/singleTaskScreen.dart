import 'package:flutter/material.dart';

class MyTaskCard extends StatelessWidget {
  String title,description;
  int id;
  MyTaskCard({
    super.key,
    required this.id,
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
              child: id==1 ?
              Image.asset("assets/images/books.jpg") :
              id==2 ?
              Container() :
              Container()
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text('$title'),
            ),
            Container(
              child: Text('$description'),
            ),
            SizedBox(height: 40,),
            Container(
              child: Text('Did you Complete The task?'),
            )
          ],
        ),
      ),
    );
  }
}
