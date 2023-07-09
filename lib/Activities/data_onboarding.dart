import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({super.key});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            color: Colors.black,
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: space_4, vertical: space_4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Just a step away !',
                    style: GoogleFonts.getFont(fontFamily,
                        fontWeight: FontWeight.w400,
                        fontSize: size_11,
                        color: black1,
                        height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: space_6,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      style: GoogleFonts.getFont(fontFamily,
                          fontSize: size_5,
                          fontWeight: FontWeight.w600,
                          color: gray_3),
                      decoration: InputDecoration(
                          labelText: "Full Name*",
                          floatingLabelStyle: GoogleFonts.getFont(fontFamily,
                              fontSize: size_9,
                              fontWeight: FontWeight.w400,
                              color: gray_11),
                          labelStyle: GoogleFonts.getFont(fontFamily,
                              fontSize: size_4,
                              fontWeight: FontWeight.w400,
                              color: gray_11),
                          enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: gray_11, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: gray_11, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                    ),
                  ),
                  const SizedBox(
                    height: space_5,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      style: GoogleFonts.getFont(fontFamily,
                          fontSize: size_5,
                          fontWeight: FontWeight.w600,
                          color: gray_3),
                      decoration: InputDecoration(
                          labelText: "Email ID*",
                          floatingLabelStyle: GoogleFonts.getFont(fontFamily,
                              fontSize: size_9,
                              fontWeight: FontWeight.w400,
                              color: gray_11),
                          labelStyle: GoogleFonts.getFont(fontFamily,
                              fontSize: size_4,
                              fontWeight: FontWeight.w400,
                              color: gray_11),
                          enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: gray_11, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: gray_11, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                    ),
                  )
                ]),
                SizedBox(
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
                      Navigator.pushNamed(context, '/navigation');
                    },
                    child: const Text(
                      'Let’s Start',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
