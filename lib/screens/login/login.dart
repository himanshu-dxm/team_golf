import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sih_team_golf/helper/controller/sign_up_controller.dart';
import 'package:sih_team_golf/screens/login/otpScreen.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  final controller = Get.put(SignUpController());


  void authenticate() {
    if(_formKey.currentState!.validate()) {
      print("validating data and sending otp");
      String phoneNo = "+91${controller.phoneNumberController.text.trim()}";
      SignUpController.instance.phoneAuthentication(phoneNo);
      Get.to(() => OTPScreen(phoneNumber: phoneNo));
    } else {
      print("Error Occurred");
    }
  }



  @override
  void dispose() {
    print("Disposing");
    // controller.phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              const Image(
                image: AssetImage(
                  'assets/icon/splash.png',
                ),
                height: 100,
              ),
              // Text(
              //     'SAL Maps',
              //     style: GoogleFonts.bebasNeue(
              //         fontSize: 48
              //     )
              // ),
              const SizedBox(
                height: 10,
              ),
              // Login
              const Text(
                'Login ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 32,),

              // Phone Number Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        validator: (value) {
                          if(value==null || value.isEmpty) {
                            return 'It Cannot be Empty';
                          } else if(value.length!=10) {
                            return 'It should be 10 characters';
                          } else if(value.contains(' ')) {
                            return 'No Space Allowed';
                          } else if(value.contains("-")) {
                            return 'No \'-\' Allowed';
                          } else if(value.contains(".")) {
                            return 'No \'.\' Allowed';
                          } else if(value.contains(",")) {
                            return 'No \',\' Allowed';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: " Enter Phone",
                            hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400
                            ),
                            // icon: Icon(Icons.phone),
                            prefixIcon: Column(
                              // mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.call,size: 18,),
                                    SizedBox(width: 4,),
                                    Text(
                                      "+91 :",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                        ),
                        keyboardType: TextInputType.number,
                        // maxLength: 10,
                        controller: controller.phoneNumberController,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: () {
                    print("Login Tapped");
                    authenticate();

                  },
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
