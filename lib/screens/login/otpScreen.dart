import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sih_team_golf/helper/controller/otp_controller.dart';

class OTPScreen extends StatefulWidget {

  final String phoneNumber;

  OTPScreen({required this.phoneNumber});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var otpController = Get.put(OTPController());
  // final _formKey = GlobalKey<FormState>();

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();

  bool isLoading = false;

  bool resent = false;
  int _seconds = 30;

  @override
  void initState() {
    super.initState();

    // sendOTP().then((value) => _startCountdown());

    // if(mounted) {
    //   Timer(const Duration(seconds: 30), () {
    //     setState(() {
    //       resent = true;
    //     });
    //   });
    // }
  }

  // void _startCountdown() {
  //   if(mounted) {
  //     timer = Timer.periodic(const Duration(seconds: 1), (timer) {
  //       setState(() {
  //         if (_seconds > 0) {
  //           _seconds--;
  //         } else {
  //           timer.cancel();
  //         }
  //       });
  //     });
  //   }
  // }

  Future<void> sendOTP() async {
    // if(!widget.phoneNumber.startsWith("+91")) {
    //   print("Number not starting with +91");
    //   // CommonStyles.snackBar(context, "Enter Number Again!!");
    // }
    // FirebaseAuth auth=FirebaseAuth.instance;
    // await auth.verifyPhoneNumber(
    //   phoneNumber: widget.phoneNumber,
    //   verificationCompleted: (PhoneAuthCredential credential) async {
    //     await auth.signInWithCredential(credential).then((value) => {
    //       if(value.user!=null) {
    //         print("Logged In Line 41"),
    //         // TODO: Push->PushReplacement Done
    //         if(widget.phoneNumber=="+919934161540") {
    //           Navigator.of(context).pushReplacement(
    //               MaterialPageRoute(builder: (c) => HomePageAmbulance()))
    //         } else
    //           {
    //             Navigator.of(context).pushReplacement(
    //                 MaterialPageRoute(builder: (c) => MapScreen()))
    //           }
    //       }
    //     });
    //   },
    //   verificationFailed: (FirebaseAuthException e) {
    //     if(e.code == 'invalid-phone-number') {
    //       print('The provided phone number is not valid');
    //       CommonStyles.snackBar(context, "Invalid Phone");
    //     } else {
    //       print(e.message);
    //       CommonStyles.snackBar(context, e.message.toString());
    //     }
    //   },
    //   codeSent: (String verificationId, int? resendToken) async {
    //
    //     setState(() {
    //       _verificationCode = verificationId;
    //     });
    //     // String smsCode = _otpTextEditingController.text;
    //     // PhoneAuthCredential credential = PhoneAuthProvider.credential(
    //     //     verificationId: verificationId,
    //     //     smsCode: smsCode
    //     // );
    //     // await auth.signInWithCredential(credential);
    //   },
    //   codeAutoRetrievalTimeout: (String verificationId) {
    //     if (mounted) {
    //       setState(() {
    //         _verificationCode = verificationId;
    //       });
    //     }}
    //   ,
    //   timeout: const Duration(seconds: 30),//TODO :Duration value
    // );
  }

  void authenticateUser(String otp) async {
    // try {
      // FirebaseAuth auth=FirebaseAuth.instance;
      // await auth.verifyPhoneNumber(
      //     phoneNumber: "+919934161540",
      //     verificationCompleted: (PhoneAuthCredential credential) async {
      //       await auth.signInWithCredential(credential);
      //     },
      //     verificationFailed: (FirebaseAuthException e) {
      //       if(e.code == 'invalid-phone-number') {
      //         print('The provided phone number is not valid');
      //       } else {
      //         print(e.message);
      //       }
      //     },
      //     codeSent: (String verificationId, int? resendToken) async {
      //       String smsCode = _otpTextEditingController.text;
      //       PhoneAuthCredential credential = PhoneAuthProvider.credential(
      //           verificationId: verificationId,
      //           smsCode: smsCode
      //       );
      //
      //       await auth.signInWithCredential(credential);
      //     },
      //     codeAutoRetrievalTimeout: (String verificationId) {},
      // );

    //   await FirebaseAuth.instance
    //       .signInWithCredential(PhoneAuthProvider.credential(
    //       verificationId: _verificationCode!,
    //       smsCode: otp))
    //       .then((value) {
    //     if(value.user != null) {
    //       if (kDebugMode) {
    //         print("Logged In Success");
    //       }
    //       // TODO: Push->PushReplacement
    //       if(widget.phoneNumber=="+919934161540") {
    //         Navigator.of(context).pushReplacement(
    //             MaterialPageRoute(builder: (c) => HomePageAmbulance()));
    //       } else
    //       {
    //         Navigator.of(context).pushReplacement(
    //             MaterialPageRoute(builder: (c) => MapScreen()));
    //       }
    //     } else {
    //       if (kDebugMode) {
    //         print("Not Logged In Sorry");
    //       }
    //     }
    //   });
    //
    //
    // } catch (e) {
    //   ScaffoldMessenger.of(context).showSnackBar(CommonStyles.snackBar(context, "Invalid OTP"));
    //   print("OTP Verification Error"+e.toString());
    // }
  }

  @override
  void dispose() {
    // timer?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    // TODO : Change duration value


    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              dispose();
              Navigator.pop(context);
            },
            child: const Icon(
                Icons.arrow_back_ios_outlined
            )
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(16),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'OTP Validation',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white
                ),
              ),
            ),
            const SizedBox(height: 6,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Enter OTP received on',
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: const Color(0xff6b52f4),
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text(
                    '+91******${widget.phoneNumber.substring(9)}',
                    style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.purpleAccent,
                        textStyle: GoogleFonts.lato(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline
                        ),
                      ),
                      onPressed: (){
                        print("Change Number tapped!!");
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Change Number?',
                      )
                  )
                ],
              ),
            ),
            const SizedBox(height: 8,),
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OTPInput(controller: _fieldOne, autoFocus: true),
                  OTPInput(controller: _fieldTwo, autoFocus: false),
                  OTPInput(controller: _fieldThree, autoFocus: false),
                  OTPInput(controller: _fieldFour, autoFocus: false),
                  OTPInput(controller: _fieldFive, autoFocus: false),
                  OTPInput(controller: _fieldSix, autoFocus: false),
                ],
              ),
            ),
            const SizedBox(height: 16,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Resend Otp After ',
                    style: GoogleFonts.lato(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),
                  ),
                  Text(
                    (_seconds>=10)?'00:':"00:0",
                    style: GoogleFonts.lato(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff6b52f4)
                    ),
                  ),
                  Text(
                    (_seconds>=0)?'$_seconds':"00",
                    style: GoogleFonts.lato(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff6b52f4)
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: Container()),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if(resent) {
                        setState(() {
                          _seconds = 60;
                          _fieldOne.clear();
                          _fieldTwo.clear();
                          _fieldThree.clear();
                          _fieldFour.clear();
                          _fieldFive.clear();
                          _fieldSix.clear();
                          sendOTP();
                        });
                        // sendOTP();
                      } else {
                        print("Resent Not activated");
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.black,
                              action: SnackBarAction(
                                label: 'Done',
                                onPressed: () {},
                                textColor: const Color(0xff6b52f4),
                              ),
                              content: const Text(
                                " Action not allowed!",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              duration: const Duration(milliseconds: 3500),
                              width: MediaQuery.of(context).size.width*0.9,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                            )
                        );
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: resent?const Color(0xff6b52f4):Colors.transparent,
                          border: Border.all(
                              color: const Color(0xff6b52f4),
                              style: BorderStyle.solid
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12.0))
                      ),
                      width: MediaQuery.of(context).size.width*0.40,
                      padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 8),
                      child: Center(
                        child: Text(
                          'RESEND',
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            color: resent?Colors.white:const Color(0xff6b52f4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      String otp = _fieldOne.text+_fieldTwo.text+_fieldThree.text
                          +_fieldFour.text+_fieldFive.text+_fieldSix.text;
                      setState(() {
                        otp = _fieldOne.text+_fieldTwo.text+_fieldThree.text
                            +_fieldFour.text+_fieldFive.text+_fieldSix.text;
                      });
                      print("OTP $otp");
                      // authenticateUser(otp);



                      OTPController.instance.verifyOTP(otp);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xff6b52f4),
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(12.0))),
                      width: MediaQuery.of(context).size.width * 0.40,
                      padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
                      child: Center(
                        child: Text(
                          'SUBMIT',
                          style: GoogleFonts.lato(
                              fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class OTPInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OTPInput(
      {required this.controller, required this.autoFocus}
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 32,
      child: TextFormField(
        controller: controller,
        autofocus: autoFocus,
        onChanged: (val) {
          if(val.length==1) {
            FocusScope.of(context).nextFocus();
          }
        },
        style: const TextStyle(
          fontSize: 20,
          color: Color(0xffaea7d0),
        ),
        cursorColor: Colors.white,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
