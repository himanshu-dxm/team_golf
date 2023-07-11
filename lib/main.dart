import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih_team_golf/firebase_options.dart';
import 'package:sih_team_golf/helper/controller/transaction_controller.dart';
import 'package:sih_team_golf/services/auth.dart';
import 'package:sih_team_golf/screens/homeScreen.dart';
import 'package:sih_team_golf/screens/login/login.dart';
import 'package:sih_team_golf/screens/productDetails/productDetailsScreen.dart';
import 'package:sih_team_golf/services/getProductData.dart';

import 'model/Product.dart';
import 'screens/productCFDetail/productCFDetail.dart';
import 'screens/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // JSONDetails.getProductData("bafkreichbprxsxxltpobrrfvpsad77ufg6rsdrofthz7sxobm2xp6bjy2q");

  await initializations();
  runApp(const MyApp());
}

initializations() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).
  then((value) {
    print(value);
    // Get.put(AuthenticationRepository());
    Get.put(TransactionController());
  });
  print("Inside getTransaction");
  List<Product> products = await TransactionController.instance.getTransaction("Tytrd45m4gW6XA9yq8PZ3deLVGs2");
  print("Products Length:${products.length}");
  print(products[0].totalCarbon);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Team Golf',
      theme: ThemeData(
        // primarySwatch: Colors.grey,
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      // home: LoginPage(),
      // home: ProductDetails(
      //   pid: 'bafkreichbprxsxxltpobrrfvpsad77ufg6rsdrofthz7sxobm2xp6bjy2q',
      // ),

      // home: ProductCF(
      //   manufacturingSpends: 100,
      //   logisticsSpends: 300,
      //   totalCarbon: 3000,
      //   productName: 'Product Name',
      //   packagingSpends: 1500,
      // ),

      // home: LoginScreen(),
      home: HomeScreen(),
    );
  }
}
