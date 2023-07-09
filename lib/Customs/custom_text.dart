import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String txtString;
  const CustomText({super.key, required this.txtString});
  @override
  Widget build(BuildContext context) {
    return Text(
      txtString,
      style: GoogleFonts.getFont(
        fontFamily,
        color: Colors.black,
        fontSize: size_5,
        // fontWeight: FontWeight.w300,
      ),
    );
  }
}