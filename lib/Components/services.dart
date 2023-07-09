import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_bullet_list/bullet_list.dart';
import '../Customs/custom_text.dart';
// import 'package:craft_my_plate/Customs/custom_text.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 360,
      height: 410,
      padding: const EdgeInsets.symmetric(vertical: 4.5),

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
            // height: 347,
            height: 390,
            // width: MediaQuery.of(context).size.width -40,
            width: 310,
            margin: margin,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                    spreadRadius: 0),
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, -1),
                    blurRadius: 4,
                    spreadRadius: 0),
              ],
            ),
            child: Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    decoration: const ShapeDecoration(
                      color: Color(0xFF6318AF),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(4)),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recommended',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4)),
                    child: Image.asset(
                      "assets/images/home/services.png",
                      height: 127,
                      width: 286.9,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/icons/Signature.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Signature",
                        style: GoogleFonts.getFont(
                          fontFamily,
                          color: primary,
                          fontSize: size_9,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  // BulletList(
                  //   bullet: Image.asset("assets/icons/sparkleBullet.png"),
                  //   style: GoogleFonts.getFont(
                  //     fontFamily,
                  //     color: Colors.black,
                  //     fontSize: size_5,
                  //     fontWeight: FontWeight.w300,
                  //   ),
                  //   strings: const [
                  //     'High Quality Disposable Cutlery',
                  //     'Elegant Decorations & Table Settings',
                  //     'Served by Waitstaff',
                  //     'Best for Weddings, Corporate Events etc'
                  //   ],
                  // ),
                  SuperBulletList(
                    customBullet: Image.asset("assets/icons/sparkleBullet.png"),
                    items: const [
                      CustomText(txtString: 'High Quality Disposable Cutlery'),
                      CustomText(
                          txtString: 'Elegant Decorations & Table Settings'),
                      CustomText(
                          txtString: 'Elegant Decorations & Table Settings'),
                      CustomText(
                          txtString: 'Best for Weddings, Corporate Events etc'),
                    ],
                    // gap: 5,
                    // seperator: const SizedBox(
                    //   height: 5,
                    // ),
                  ),
                  const SizedBox(height: 16),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Know More',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF6318AF),
                        fontSize: 12,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
