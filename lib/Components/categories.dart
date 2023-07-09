import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:craft_my_plate/lists.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 83,

        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> item = categories[index];

              EdgeInsets margin;
          if (index == 0) {
            margin = const EdgeInsets.only(left: space_4, right: space_3);
          } else if (index == 1 || index < 2) {
            margin = const EdgeInsets.only(right: space_3);
          } else {
            margin = const EdgeInsets.only(left: 0, right: space_4);
          }

              return Container(
                margin: margin,
                child: Column(
                  children: [
                  Image.asset(item['image'],
                  width: 64.71,
                  height: 65,
                  ),
                  Text(item['text'],
                  style: GoogleFonts.getFont(
                      fontFamily,
                      color: black1,
                      fontSize: size_3,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
                  
                ),
              );
            },
          ),
        );
  }
}
