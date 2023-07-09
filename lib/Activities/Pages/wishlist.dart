import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
              "Wishlist",
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