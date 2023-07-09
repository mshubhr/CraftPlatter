import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:craft_my_plate/lists.dart';
import 'package:craft_my_plate/Components/offers.dart';
import 'package:craft_my_plate/Components/search_box.dart';
import 'package:craft_my_plate/Components/crafting1.dart';
import 'package:craft_my_plate/Components/crafting2.dart';
import 'package:craft_my_plate/Components/categories.dart';
import 'package:craft_my_plate/Components/menu.dart';
import 'package:craft_my_plate/Components/services.dart';
import 'package:craft_my_plate/Components/process.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: space_2, ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: space_4),
            child: Text(
              "Hi, Monica!",
              style: GoogleFonts.getFont(
                fontFamily,
                color: primary,
                fontSize: size_13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          
          const SizedBox(
            height: space_2,
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: space_4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  Text(
                    "Current location",
                    style: GoogleFonts.getFont(
                      fontFamily,
                      color: gray_2,
                      fontSize: size_3,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: primary,
                      ),
                      Text(
                        "Hyderabad",
                        style: GoogleFonts.getFont(
                          fontFamily,
                          color: Colors.black,
                          fontSize: size_3,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.play_circle_outline_rounded,
                      color: primary,
                    ),
                    Text(
                      "How it works?",
                      style: GoogleFonts.getFont(
                        fontFamily,
                        color: Colors.black,
                        fontSize: size_1,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

        const SizedBox(height: space_2,),

        const Offers(),

        const SizedBox(height: space_3,),

        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: space_4),
          child:  SearchBox(),
        ),

        const SizedBox(height: space_6,),
          
        Padding(
            padding: const EdgeInsets.only(left: space_4),
            child: Text(
              "Start crafting",
              style: GoogleFonts.getFont(
                fontFamily,
                color: primary,
                fontSize: size_11,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

        const SizedBox(height: space_3,),

        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: space_4),
          child:  CraftingOne(),
        ),

        const SizedBox(height: space_4,),

        const CraftingTwo(),

        const SizedBox(height: space_3,),
        
        Padding(
            padding: const EdgeInsets.only(left: space_4),
            child: Text(
              "Top Categories",
              style: GoogleFonts.getFont(
                fontFamily,
                color: Colors.black,
                fontSize: size_9,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          const SizedBox(height: space_2,),

           
          const Categories(),

          const SizedBox(height: space_3,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: space_4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                "Starters",
                style: GoogleFonts.getFont(
                  fontFamily,
                  color: Colors.black,
                  fontSize: size_9,
                  fontWeight: FontWeight.w400,
                ),
              ),
          
              Text(
                "More Starters",
                style: GoogleFonts.getFont(
                  fontFamily,
                  color: primary,
                  fontSize: size_3,
                  fontWeight: FontWeight.w400,
                ),
              ),
              ],
            ),
          ),

          const SizedBox(height: space_1,),

          Menu(menu: starters,),

          const SizedBox(height: space_3,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: space_4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                "Main Course",
                style: GoogleFonts.getFont(
                  fontFamily,
                  color: Colors.black,
                  fontSize: size_9,
                  fontWeight: FontWeight.w400,
                ),
              ),
          
              Text(
                "More Main Courses",
                style: GoogleFonts.getFont(
                  fontFamily,
                  color: primary,
                  fontSize: size_3,
                  fontWeight: FontWeight.w400,
                ),
              ),
              ],
            ),
          ),

          const SizedBox(height: space_1,),

          Menu(menu: mainCourse,),

          const SizedBox(height: space_4,),
          
           Padding(
            padding: const EdgeInsets.only(left: space_4),
            child: Text(
              "Services",
              style: GoogleFonts.getFont(
                fontFamily,
                color: Colors.black,
                fontSize: size_11,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          const SizedBox(height: space_2,),

          const Services(),

          const SizedBox(height: space_4,),
          
           Padding(
            padding: const EdgeInsets.only(left: space_4),
            child: Text(
              "How does it work?",
              style: GoogleFonts.getFont(
                fontFamily,
                color: Colors.black,
                fontSize: size_11,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          const SizedBox(height: space_6,),

         const  Process(),

         const SizedBox(height: space_1,),
          
           Container(
            color: gray_1,
             child: Padding(
              padding: const EdgeInsets.only(left: space_4,top: space_4,bottom: 50),
              child: Text(
                "Delicious food with\nprofessional service !",
                style: GoogleFonts.getFont(
                  fontFamily,
                  color: gray_5,
                  fontSize: size_16,
                  fontWeight: FontWeight.w400,
                ),
              ),
                     ),
           ),

          // const SizedBox(height: 400,),

        ],
      ),
    ));
  }
}
