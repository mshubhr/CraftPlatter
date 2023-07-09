import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkRowOne extends StatelessWidget {
  const WorkRowOne({super.key, required this.heading, required this.subheading, required this.imageAddress});

  final String heading;
  final String subheading;
  final String imageAddress;
  @override
  Widget build(BuildContext context) {
    return Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(top: -80, child: Image.asset("assets/images/home/Ellipse1.png")),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: space_4),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                  // Image.asset("assets/images/home/work1.png"),
                  Image.asset(imageAddress),
                  // const SizedBox(width: space_3,),
                  // const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,              
                    children: [
                      Text(
                        // "Customize Menu",
                        heading,
                        style: GoogleFonts.getFont(
                          fontFamily,
                          fontWeight: FontWeight.w500,
                          fontSize: size_7,
                          color: primary
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: space_1,),
                      Text(
                        // "Select items for a single event\nor multiple events",
                        subheading,
                        style: GoogleFonts.getFont(
                          fontFamily,
                          fontWeight: FontWeight.w300,
                          fontSize: size_5,
                          color: Colors.black
                        ),
                        textAlign: TextAlign.left,
                        
                      )
                       
                    ],
                  )
                       
                           ],
                         ),
               ),
            ],
            
          );
  }
}


class WorkRowTwo extends StatelessWidget {
  const WorkRowTwo({super.key, required this.heading, required this.subheading, required this.imageAddress});

  final String heading;
  final String subheading;
  final String imageAddress;
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: space_4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
          
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // "Customize Menu",
                      heading,
                      style: GoogleFonts.getFont(fontFamily,
                          fontWeight: FontWeight.w500,
                          fontSize: size_7,
                          color: primary),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: space_1,
                    ),
                    Text(
                      // "Select items for a single event\nor multiple events",
                      subheading,
                      style: GoogleFonts.getFont(fontFamily,
                          fontWeight: FontWeight.w300,
                          fontSize: size_5,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
          
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -90,
                      left: -15,
                      // right: -28,
          
                      
                      child: Image.asset("assets/images/home/Ellipse2.png")),
                    // Image.asset("assets/images/home/work2.png"),
                    Image.asset(imageAddress), 
                    ]
                    ),
                // const SizedBox(width: space_3,),
                // const Spacer(),
              
              ],
            ),
          );
  }
}