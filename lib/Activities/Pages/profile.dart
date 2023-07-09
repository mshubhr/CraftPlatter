import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
              "Profile",
              style: GoogleFonts.getFont(
                fontFamily,
                color: primary,
                fontSize: size_13,
                fontWeight: FontWeight.w400,
              ),
            ),
      )
    );
  }
}