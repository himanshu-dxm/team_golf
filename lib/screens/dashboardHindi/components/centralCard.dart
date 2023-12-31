import 'package:flutter/material.dart';

class CenterCards extends StatelessWidget {

  double totalCarbon;


  CenterCards({super.key, required this.totalCarbon});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'कपड़े',
      'खाना',
      'प्रसाधन',
      'यात्रा',
      'गैजेट'
    ];
    List<int> values = [
      25,
      31,
      9,
      12,
      26,
    ];
    return Container(
      // margin: EdgeInsets.all(8),
      // padding: EdgeInsets.all(8),
      height: 100,
      child: ListView.builder(
        itemCount: categories.length,
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
                                '${values[index] }%',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)
                            ),
                            SizedBox(height: 1,),
                            Text(
                              '${categories[index]}',
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