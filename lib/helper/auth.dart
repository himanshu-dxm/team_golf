import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:sih_team_golf/screens/homeScreen.dart';
import 'package:sih_team_golf/screens/login/login.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;


  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const LoginPage()) : Get.offAll(()=> const HomeScreen());
  }

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
        verificationCompleted: (credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (e) {
          if (e.code == 'invalid-phone-number') {
            Get.snackbar('Error', 'The provided phone number is not valid.');
          } else {
            print(e.code);
            Get.snackbar('Error', ' ${e.code}');
          }
        },
        codeSent: (verificationId, resendToken) {
          this.verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          this.verificationId.value = verificationId;
        }
      );
  }

  Future<bool> verifyOTP(String otp) async {
   var credentials =  await _auth.signInWithCredential(
        PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp)
    );

   return credentials.user != null ? true : false;
  }

  Future<void> logout() async => await _auth.signOut();

}

// on the sign in button we just need to call
/*
2 vars ..
final Controller = Get.put(SignupController());
final _formKey = GlobalKey<FormState>();

and then on pressed {
  SignupController.instance.phoneAuthentication(controller.phone.text)
}

* */