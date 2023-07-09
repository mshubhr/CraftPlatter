import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CraftingOne extends StatelessWidget {
  const CraftingOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2 - 30,
          margin: const EdgeInsets.only(right: space_2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  offset: const Offset(0, 2),
                  blurRadius: 10,
                  spreadRadius: 0),
            ],
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(
                  "assets/images/home/crafting1.png",
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Default Platters",
                  style: GoogleFonts.getFont(
                    fontFamily,
                    color: Colors.black,
                    fontSize: size_5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),


        Container(
          width: MediaQuery.of(context).size.width / 2 - 30,
          margin: const EdgeInsets.only(left: space_2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  offset: const Offset(0, 2),
                  blurRadius: 10,
                  spreadRadius: 0),
            ],
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(
                  "assets/images/home/crafting2.png",
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Craft My Plate",
                  style: GoogleFonts.getFont(
                    fontFamily,
                    color: Colors.black,
                    fontSize: size_5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
