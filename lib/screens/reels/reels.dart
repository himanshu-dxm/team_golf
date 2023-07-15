import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'components/content_screen.dart';

class Reels extends StatelessWidget {
  final List<String> videos = [
    'https://firebasestorage.googleapis.com/v0/b/carbon-footprint-monitor.appspot.com/o/reelsContent%2FSaveInsta.App%20-%202962902211481084348%20(1).mp4?alt=media&token=c5718054-eba0-4fb3-b80c-ac4c30d93ee1',
    'https://firebasestorage.googleapis.com/v0/b/carbon-footprint-monitor.appspot.com/o/reelsContent%2FSaveInsta.App%20-%203064230823486558851%20(1).mp4?alt=media&token=3bec9540-342f-40e6-91ed-4f6d105e926f',
    'https://firebasestorage.googleapis.com/v0/b/carbon-footprint-monitor.appspot.com/o/reelsContent%2FSaveInsta.App%20-%203062861060425076911%20(1).mp4?alt=media&token=cd5216d9-f772-43e0-a109-7eba220ab1dd',
    'https://firebasestorage.googleapis.com/v0/b/carbon-footprint-monitor.appspot.com/o/reelsContent%2FSaveInsta.App%20-%203017235960388869163_3693426910%20(1).mp4?alt=media&token=47e7be36-827f-4aa9-8b9d-bf1928568252',
    'https://firebasestorage.googleapis.com/v0/b/carbon-footprint-monitor.appspot.com/o/reelsContent%2FSaveInsta.App%20-%203113273705932713101%20(1).mp4?alt=media&token=ca51c0c6-bbab-4111-9e2c-9a81148fb9d8',
    'https://firebasestorage.googleapis.com/v0/b/carbon-footprint-monitor.appspot.com/o/reelsContent%2FSaveInsta.App%20-%203120768367229854732.mp4?alt=media&token=88e8e2f0-cc6d-49e5-8ed1-2869fe1b43ab',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              //We need swiper for every content
              Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ContentScreen(
                    src: videos[index],
                  );
                },
                itemCount: videos.length,
                scrollDirection: Axis.vertical,
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reels',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.camera_alt),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// referenced from https://www.youtube.com/watch?v=sFGAARggNJA
