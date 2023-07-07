import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih_team_golf/firebase_options.dart';
import 'package:sih_team_golf/helper/auth.dart';
import 'package:sih_team_golf/screens/login/login.dart';

import 'screens/splashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Team Golf',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
      // home: SplashScreen(),
    );
  }
}
