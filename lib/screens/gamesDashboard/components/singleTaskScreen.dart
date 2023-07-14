import 'package:flutter/material.dart';
import 'package:sih_team_golf/helper/constants.dart';

class MyTaskCard extends StatelessWidget {
  String title,description;
  double carbonSaved,trees;
  int id;
  MyTaskCard({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.carbonSaved,
    required this.trees
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
              Image.asset("assets/images/Task1.jpg") :
              id==2 ?
              Image.asset("assets/images/Task2.jpg") :
                  id == 3 ?
              Image.asset("assets/images/Task3.jpg") :
              Image.asset("assets/images/Task4.jpg")
            ),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              alignment: Alignment.bottomCenter,
              child: Text(
                  '$title',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
            Container(
              child: Text(
                  '$description',
                style: TextStyle(
                  fontSize: 18
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                          '${carbonSaved} ${MyConstants.carbonUnit} Carbon Saved',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      SizedBox(height: 2,),
                      Text(
                          'Eq to $trees Trees Saved',
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text('Did you Complete The task?'),
            )
          ],
        ),
      ),
    );
  }
}
