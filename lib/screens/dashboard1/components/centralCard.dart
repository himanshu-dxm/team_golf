import 'package:flutter/material.dart';

class CenterCards extends StatelessWidget {
  const CenterCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(8),
      // padding: EdgeInsets.all(8),
      height: 100,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,int index) {
          return Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey[800],
              borderRadius: BorderRadius.all(Radius.circular(100))
          ),
              child: SizedBox(
                  height: 100,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                '45',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)
                            ),
                            Text(
                              'Grocery$index',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic),
                            )
                          ]
                      )
                  )
              )
          );
        },
      ),
    );
  }
}