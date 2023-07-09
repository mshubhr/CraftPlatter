import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),

      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: purpleShadow1,
              offset: Offset(0, 3),
              blurRadius: 10,
               spreadRadius: 0
            )
          ]),

      child: TextField(        
        cursorColor: gray_3,
        style: GoogleFonts.getFont(fontFamily, color: gray_3, fontWeight: FontWeight.w300, fontSize: size_5,),
        decoration:  InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          suffixIcon: const Icon(Icons.search),
          suffixIconColor: primary80,
          hintText: 'Search food or events ',
          hintStyle: GoogleFonts.getFont(fontFamily, color: gray_3, fontWeight: FontWeight.w300, fontSize: size_5,),
        ),
      ),
    );
  }
}
