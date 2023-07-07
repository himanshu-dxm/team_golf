import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sih_team_golf/helper/auth.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final phoneNumberController = TextEditingController();

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}