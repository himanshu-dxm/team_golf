import 'package:flutter/material.dart';
import 'package:sih_team_golf/utilities/commonStyles.dart';

class OptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 110),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person, size: 18),
                        radius: 16,
                      ),
                      SizedBox(width: 6),
                      Text('creator_name'),
                      SizedBox(width: 10),
                      Icon(Icons.verified, size: 15),
                      SizedBox(width: 6),
                      TextButton(
                        onPressed: () {

                          // CommonStyles.snackBar(context, "You can follow the creator");
                        },
                        child: Text(
                          'Follow',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 6),
                  Text('Description about the video 💙❤💛 ..'),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.music_note,
                        size: 15,
                      ),
                      Text('Original Audio - some music track--'),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.favorite_outline),
                  Text('601k'),
                  SizedBox(height: 20),
                  Icon(Icons.comment_rounded),
                  Text('1123'),
                  SizedBox(height: 20),
                  Transform(
                    transform: Matrix4.rotationZ(5.8),
                    child: Icon(Icons.send),
                  ),
                  SizedBox(height: 20),
                  Icon(Icons.more_vert),
                  SizedBox(height: 10,)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}