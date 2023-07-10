import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

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
}