import 'package:flutter/material.dart';
import 'package:sih_team_golf/screens/dashboard/dashboard.dart';
import 'package:sih_team_golf/screens/dashboard1/dashboard1.dart';
import 'package:sih_team_golf/screens/profile.dart';
import 'package:sih_team_golf/screens/games.dart';
import 'package:sih_team_golf/screens/qrScanner/qrScanPage.dart';
import 'package:sih_team_golf/screens/Reels/reels.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentTab = 0;
  final List<Widget> screens = [
    const Dashboard1(),
    const Games(),
    Reels(),
    const Profile(),
    QRScanPage(),
  ];

  Widget currentScreen = const Dashboard1();

  final PageStorageBucket bucket = PageStorageBucket();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text('Home Page'),
      // ),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: currentTab==4 ?
        Colors.green :
        Colors.white,
        onPressed: () {
          print("Scanner Tapped");
          setState(() {
            currentScreen = QRScanPage();
            currentTab = 4;
          });
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => QRScanPage())
          // );
        },
        tooltip: 'Scan',
        elevation: 2.0,
        child: const Icon(Icons.qr_code_scanner),
      ),
      bottomNavigationBar:BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.black,
        child: Container(
          width: MediaQuery.of(context).size.width,
          // padding: EdgeInsets.all(8),
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              // Dashboard
              MaterialButton(
                onPressed: () {
                  print("Dashboard Pressed");
                  setState(() {
                    currentScreen = Dashboard1();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.dashboard , color: currentTab==0?Colors.green : Colors.white,),
                    Text(
                      'Dashboard',
                      style: TextStyle(
                        color: currentTab==0?Colors.green : Colors.white,
                        fontSize: 12
                      ),
                    )
                  ],
                ),
              ),


              // Games
              MaterialButton(
                onPressed: () {
                  print("Games Pressed");
                  setState(() {
                    currentScreen = Games();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.games_outlined , color: currentTab==1?Colors.green : Colors.white,),
                    Text(
                      'Games',
                      style: TextStyle(
                        color: currentTab==1?Colors.green : Colors.white,
                          fontSize: 12
                      ),
                    )
                  ],
                ),

              ),


              // Reels
              MaterialButton(
                onPressed: () {
                  print("Button3 Pressed");
                  setState(() {
                    currentScreen = Reels();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.slow_motion_video_outlined ,
                      color: currentTab==2?Colors.green : Colors.white,),
                    Text(
                      'Reels',
                      style: TextStyle(
                          color: currentTab==2?Colors.green : Colors.white,
                          fontSize: 12
                      ),
                    )
                  ],
                ),

              ),


              // Profile
              MaterialButton(
                onPressed: () {
                  print("Profile Pressed");
                  setState(() {
                    currentScreen = Profile();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.account_circle ,
                      color: currentTab==3?Colors.green : Colors.white,),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: currentTab==3?Colors.green : Colors.white,
                          fontSize: 12
                      ),
                    )
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
