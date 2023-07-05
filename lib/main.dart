import 'package:flutter/material.dart';
import 'package:sih_team_golf/screens/login.dart';

import 'screens/splashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Team Golf',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: LoginPage(),
      home: SplashScreen(),
    );
  }
}
