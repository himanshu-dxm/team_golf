import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sih_team_golf/model/user.dart';

import '../model/Product.dart';

class TransactionsRepository extends GetxController {
  static TransactionsRepository get instance => Get.find();
  final _db = FirebaseFirestore.instance;

  addTransaction(Product product) async {

    await _db.collection('transactions')
        .add(product.toJson()).whenComplete(
            () => Get.snackbar(
                "Success", "Product Added to Database",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.grey[800],
              colorText: Colors.green
            )
      ).catchError((error, stackTrace) {
       Get.snackbar(
           "Error", "Something went wrong",
           snackPosition: SnackPosition.BOTTOM,
           backgroundColor: Colors.grey[800],
           colorText: Colors.red
       );
       print(error.toString());
    });

  }
  
  Future<List<Product>> getTransaction(String uid) async {
    final snapshot = await _db.collection("transactions").where("uid", isEqualTo: uid).get();
    final transactionData = snapshot.docs.map((e) => Product.fromSnapshot(e)).toList();
    return transactionData;
  }

  Future<double> getTotalCarbon(String uid) async {
    final snapshot = await _db.collection("transactions").where("uid", isEqualTo: uid).get();
    final transactionData = snapshot.docs.map((e) => Product.fromSnapshot(e)).toList();
    double sum = 0.0;
    for( final transaction in transactionData) {
      sum += transaction.totalCarbon;
    }
    return sum;
  }
}