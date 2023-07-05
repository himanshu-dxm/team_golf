import 'package:flutter/material.dart';
import 'package:sih_team_golf/screens/dashboard/dashboard.dart';
import 'package:sih_team_golf/screens/education.dart';
import 'package:sih_team_golf/screens/games.dart';
import 'package:sih_team_golf/screens/qrScanPage.dart';
import 'package:sih_team_golf/screens/reels.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentTab = 0;
  final List<Widget> screens = [
    const Dashboard(),
    const Games(),
    const Education(),
    const Reels()
  ];

  Widget currentScreen = const Dashboard();

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
        onPressed: () {
          print("Scanner Tapped");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QRScanPage())
          );
        },
        tooltip: 'Scan',
        elevation: 2.0,
        child: const Icon(Icons.qr_code_scanner),
      ),
      bottomNavigationBar:BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
        child: Container(
          // padding: EdgeInsets.all(8),
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {
                  print("Button1 Pressed");
                  setState(() {
                    currentScreen = Dashboard();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.dashboard , color: currentTab==0?Colors.green : Colors.grey,),
                    Text(
                      'Dashboard',
                      style: TextStyle(
                        color: currentTab==0?Colors.green : Colors.grey,
                      ),
                    )
                  ],
                ),

              ),
              MaterialButton(
                onPressed: () {
                  print("Button2 Pressed");
                  setState(() {
                    currentScreen = Games();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.games_outlined , color: currentTab==1?Colors.green : Colors.grey,),
                    Text(
                      'Games',
                      style: TextStyle(
                        color: currentTab==1?Colors.green : Colors.grey,
                      ),
                    )
                  ],
                ),

              ),
              MaterialButton(
                onPressed: () {
                  print("Button3 Pressed");
                  setState(() {
                    currentScreen = Education();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.library_books_outlined ,
                      color: currentTab==2?Colors.green : Colors.grey,),
                    Text(
                      'Educational',
                      style: TextStyle(
                        color: currentTab==2?Colors.green : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  print("Button4 Pressed");
                  setState(() {
                    currentScreen = Reels();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.slow_motion_video_outlined , color: currentTab==3?Colors.green : Colors.grey,),
                    Text(
                      'Reels',
                      style: TextStyle(
                        color: currentTab==3?Colors.green : Colors.grey,
                      ),
                    )
                  ],
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
