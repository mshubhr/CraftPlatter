import 'package:craft_my_plate/Activities/login_onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:craft_my_plate/Customs/otp_pin.dart';

class Otp extends StatefulWidget {
  const Otp({super.key, required phone});
  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "OTP Verfication",
            style: GoogleFonts.getFont(fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: size_5,
                color: Colors.black,
                height: 1.25),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            color: Colors.black,
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: space_4),
            child: Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "We have sent a verification code to",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(fontFamily,
                        fontWeight: FontWeight.w400,
                        fontSize: size_7,
                        letterSpacing: 0.5,
                        color: gray_3),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      // +91-${widget.phone}',
                      'codeMobile! + phoneNumber.text',
                      style: GoogleFonts.getFont(fontFamily,
                          fontWeight: FontWeight.w500,
                          fontSize: size_7,
                          letterSpacing: 0.5,
                          color: black2),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.verified_sharp,
                      color: green,
                    )
                  ]),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 32, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: PinInput(first: true, last: false),
                        ),
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: PinInput(first: false, last: false),
                        ),
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: PinInput(first: false, last: false),
                        ),
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: PinInput(first: false, last: false),
                        ),
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: PinInput(first: false, last: false),
                        ),
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: PinInput(first: false, last: true),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    // margin: const EdgeInsets.only(left: 32.0, right: 16.0),
                    height: 56,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: primary,
                          textStyle: GoogleFonts.getFont(fontFamily,
                              fontSize: size_7,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)))),
                      onPressed: () async {
                        try {
                          PhoneAuthCredential credential =
                              PhoneAuthProvider.credential(
                                  verificationId: LogIn.verify, smsCode: code);

                          await auth.signInWithCredential(credential);
                          //   code = "";
                          // ignore: use_build_context_synchronously
                          Navigator.pushNamedAndRemoveUntil(
                              context, "otp", (route) => false);
                        } catch (e) {
                          // ignore: avoid_print
                          print("Wrong Otp");
                          //   print(code);
                          //   code = "";
                        }
                      },
                      child: const Text(
                        'Submit',
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  !isTapped ? requestCode() : resendOTPSuccess(),
                ])));
  }

  Text resendOTPSuccess() {
    return Text(
      'OTP Resent Successfully!',
      style: GoogleFonts.getFont(fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: size_7,
          color: primary,
          letterSpacing: 0.5,
          height: 1.5),
      textAlign: TextAlign.center,
    );
  }

  Row requestCode() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Didn\'t receive the code?',
          style: GoogleFonts.getFont(fontFamily,
              fontWeight: FontWeight.w400,
              fontSize: size_7,
              color: black2,
              letterSpacing: 0.5,
              height: 1.5),
          textAlign: TextAlign.center,
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            setState(() {
              isTapped = true;
            });
            print('Text Clicked');
          },
          child: Text(
            'Request Again.',
            style: GoogleFonts.getFont(fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: size_7,
                color: primary,
                letterSpacing: 0.5,
                height: 1.5),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
