import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_border/dotted_border.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          
          EdgeInsets margin;
          if (index == 0) {
            margin = const EdgeInsets.only(left: space_4, right: space_3);
          } else if (index == 1 || index < 2) {
            margin = const EdgeInsets.only(right: space_3);
          } else {
            margin = const EdgeInsets.only(left: 0, right: space_4);
          }

          return Container(
            width: MediaQuery.of(context).size.width - 40,
            padding: const EdgeInsets.symmetric(vertical:15,horizontal: 10),
            margin: margin,
            decoration: BoxDecoration(
              color: const Color(0xFF123ABC).withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/images/home/offer.png"),
                fit: BoxFit.cover,
              ),
            ),

            child: Stack(
              children: [
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: SizedBox(
                //     height: 40,
                //     width: 150,
                //     child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Enjoy your first\norder, the taste of\nour delicious food!",
                      style: GoogleFonts.getFont(
                        fontFamily,
                        color: Colors.white,
                        fontSize: size_7,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // const SizedBox(height: space_2,),
                    DottedBorder(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical:10,horizontal: 25),                    
                      strokeWidth: 1,
                      dashPattern: const [4,3,4,3],
                      
                      child: Text(
                      "FIRSTPLATE01",
                      style: GoogleFonts.getFont(
                        fontFamily,
                        color: cream,
                        fontSize: size_4,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    )
                  ],
                ),
                //   ),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
