
import 'package:get/get.dart';
import 'package:sih_team_golf/services/auth.dart';
import 'package:sih_team_golf/screens/homeScreen.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const HomeScreen()) : Get.back();
  }
}