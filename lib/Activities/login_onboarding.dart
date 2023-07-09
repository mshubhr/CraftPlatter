import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:craft_my_plate/Customs/phonenumber.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  static String verify = "";

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController phoneNumber = TextEditingController();

  bool visible = false;
  var temp;

  String? codeMobile;
  var mobile;

  @override
  void dispose() {
    phoneNumber.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: space_4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Image.asset(
                    "assets/images/walkthrough/Vector2.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/splashLogo.png",
                            // width: double.infiRnity,
                            // fit: BoxFit.cover,
                          ),
                          Text(
                            "CraftMyPlate",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(fontFamily,
                                fontWeight: FontWeight.w400,
                                fontSize: size_11,
                                color: white1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: space_6,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: space_4),
                  child: Text(
                    "Login or Signup",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.getFont(fontFamily,
                        fontWeight: FontWeight.w500,
                        fontSize: size_5,
                        color: gray_8),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: space_4),
                  child: PhoneField(),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 24.0, right: 24.0),
                  padding: const EdgeInsets.symmetric(horizontal: space_4),
                  height: 56,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: primary,
                        textStyle: GoogleFonts.getFont(fontFamily,
                            fontSize: size_5,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                    onPressed: () async {
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: codeMobile! + phoneNumber.text,
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          LogIn.verify = verificationId;
                          Navigator.pushNamed(context, '/otp');
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    },
                    child: const Text(
                      'Continue',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "By continuing, you agree to our",
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(fontFamily,
                    fontWeight: FontWeight.w300,
                    fontSize: size_4,
                    color: gray_2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Terms of Service",
                      //  textAlign: TextAlign.left,
                      style: GoogleFonts.getFont(fontFamily,
                          fontWeight: FontWeight.w300,
                          fontSize: size_4,
                          color: gray_2,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Privacy Policy",
                      //  textAlign: TextAlign.left,
                      style: GoogleFonts.getFont(fontFamily,
                          fontWeight: FontWeight.w300,
                          fontSize: size_4,
                          color: gray_2,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}
