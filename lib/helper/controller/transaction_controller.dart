import 'package:get/get.dart';
import 'package:sih_team_golf/services/TransactionRepository.dart';
import 'package:sih_team_golf/services/auth.dart';

import '../../model/Product.dart';

class TransactionController extends GetxController {
  static TransactionController get instance => Get.find();

  final transactionRepo = Get.put(TransactionsRepository());

  Future<void> createTransaction(Product product) async {
    await transactionRepo.addTransaction(product);
  }
  
  Future<List<Product>> getTransaction() async {
    return await transactionRepo.getTransaction();
  }

  Future<double> getTotalCarbon() async {
    return await transactionRepo.getTotalCarbon();
  }
}