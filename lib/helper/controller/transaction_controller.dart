import 'package:get/get.dart';
import 'package:sih_team_golf/model/user.dart';
import 'package:sih_team_golf/services/TransactionRepository.dart';
import 'package:sih_team_golf/services/auth.dart';

import '../../model/Product.dart';

class TransactionController extends GetxController {
  static TransactionController get instance => Get.find();

  final transactionRepo = Get.put(TransactionsRepository());

  Future<void> createTransaction(Product product) async {
    await transactionRepo.addTransaction(product);
  }
  
  Future<List<Product>> getTransaction(String uid) async {
    return await transactionRepo.getTransaction(uid);
  }

  Future<double> getTotalCarbon(String uid) async {
    return await transactionRepo.getTotalCarbon(uid);
  }
}