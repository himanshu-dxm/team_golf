import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/Product.dart';

class Transactions {
  static final db = FirebaseFirestore.instance;
  static Future<void> addTransaction(Product product) async {

    await db.collection('transactions').add(product as Map<String, dynamic>);

  }
}