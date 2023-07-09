import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CraftingTwo extends StatelessWidget {
  const CraftingTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {

            EdgeInsets margin;
          if (index == 0) {
            margin = const EdgeInsets.only(left: 35, right: space_6);
          } else if (index == 1 || index < 4) {
            margin = const EdgeInsets.only(right: space_6);
          } else {
            margin = const EdgeInsets.only(left: 0, right: space_4);
          }


          double left;
          if (index == 0) {
            left = 10;
          } else  {
            left= -15;
          } 


            return Stack(  
              clipBehavior: Clip.none,            
              children: [
                defaultMenu(context, index+1, margin),
                Positioned(
                  top: 20,
                  left: left,
                  child: Image.asset(
                    "assets/images/home/defaultMenu.png", 
                    width: 103,
                    height: 85,   
                    fit: BoxFit.cover,   
                    
                  ),
                ),
              ],
            );
          }),
    );
  }
}






Widget defaultMenu(BuildContext context, int num, EdgeInsets margin) {
  return Container(
    height: 149,
    width: 159,
    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
    margin: margin,
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: gray_4),
      borderRadius: BorderRadius.circular(7),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 0),
      ],
    ),

    child: Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       
        children: [
          Text(
            "Default Menu $num",
            style: GoogleFonts.getFont(
              fontFamily,
              color: gray_5,
              fontSize: size_3,
              fontWeight: FontWeight.w500,
            ),
          ),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 90 ,
              ),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
               Text(
                "3 starters",
            style: GoogleFonts.getFont(
              fontFamily,
              color: gray_5,
              fontSize: size_2,
              fontWeight: FontWeight.w300,
            ),
          ),
              
              
               Text(
                "3 maincourse",
            style: GoogleFonts.getFont(
              fontFamily,
              color: gray_5,
              fontSize: size_2,
              fontWeight: FontWeight.w300,
            ),
          ),
             
               Text(
                "3 desserts",
            style: GoogleFonts.getFont(
              fontFamily,
              color: gray_5,
              fontSize: size_2,
              fontWeight: FontWeight.w300,
            ),
          ),
               
               Text(
                "3 drinks",
            style: GoogleFonts.getFont(
              fontFamily,
              color: gray_5,
              fontSize: size_2,
              fontWeight: FontWeight.w300,
            ),
          ),
              // ),
              ],
             )
            ],
          ),
    
          Row(
            children: [
              const Icon(Icons.person_rounded,
              color: gray_6,
              size: 12,
              ),
              Text(
                "Min 800",
                style: GoogleFonts.getFont(
                  fontFamily,
                  color: gray_5,
                  fontSize: size_3,
                  fontWeight: FontWeight.w500,
                ),                  
              ),
            ],
          ),
    
          RichText(
            text: TextSpan(
              text: 'Starts at ',
              style: GoogleFonts.getFont(
              fontFamily,
              color: primary,
              fontSize: size_3,
              fontWeight: FontWeight.w400,
            ),    
              children: [
                TextSpan(
                  text: '₹ 777',
                  style: GoogleFonts.getFont(
              fontFamily,
              color: primary,
              fontSize: size_5,
              fontWeight: FontWeight.w400,
            ),    
                ),
              ],
            ),
          ),
    
        ],
      ),
    ),

  );
}
