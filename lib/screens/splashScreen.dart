/**import 'dart:async';
import 'package:flutter/material.dart';

import 'homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    var d=const Duration(seconds: 5);
    Timer(d,
    () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder:(context) =>
          const HomeScreen(),),
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // backgroundColor:  const Color(0xeeeafcff),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.8,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/icon/splash.png")
              )
          ),
        ),
      ),
    );
  }
}
**/
// Trying new splash screen

import 'dart:async';
import 'package:flutter/material.dart';
import 'homeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Setting up the animation controller
    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    // Setting up the fade-out animation
    // _animation = Tween<double>(begin: 1.0, end: 0.0).animate(_controller);

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    // Start the animation after a delay
    Timer(Duration(seconds: 3), () {
      _controller.forward();
    });
    var d=const Duration(seconds: 5);
    Timer(d,
            () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder:(context) =>
            const HomeScreen(),),
        )
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Opacity(
              opacity: _animation.value,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Your logo widget
                  // Image(
                  //   image: AssetImage("assets/icon/splash.png")
                  // ),
                  // Fading circles
                  Positioned(
                    top: 50,
                    child: Container(
                      width: 100*_animation.value,
                      height: 100*_animation.value,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xB5D4B3),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    child: Container(
                      width: 100*_animation.value,
                      height: 100*_animation.value,
                      decoration:const  BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0x91BE8c),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    child: Container(
                      width: 100*_animation.value,
                      height: 100*_animation.value,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0x6AA063),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

