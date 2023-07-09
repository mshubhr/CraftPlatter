import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
              "Orders",
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