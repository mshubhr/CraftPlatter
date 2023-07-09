import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';


class Menu extends StatelessWidget {
  const Menu({super.key,required this.menu});

   final List<Map<String, dynamic>> menu;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      padding: const EdgeInsets.symmetric(vertical: 4.5),


      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> item = menu[index];

          EdgeInsets margin;
          if (index == 0) {
            margin = const EdgeInsets.only(left: space_4, right: space_3);
          } else if (index == 1 || index < 2) {
            margin = const EdgeInsets.only(right: space_3);
          } else {
            margin = const EdgeInsets.only(left: 0, right: space_4);
          }

          return Container(
            height: 106,
            // width: MediaQuery.of(context).size.width / 2 - 30,
            width: 120,
            margin: margin,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: const Offset(0, 3),
                    blurRadius: 6,
                    spreadRadius: 0),
              ],
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    child: Image.asset(
                      item['image'],
                      height: 83,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 8),
                    child: Text(
                      item['text'],
                      style: GoogleFonts.getFont(
                        fontFamily,
                        color: gray_7,
                        fontSize: size_5,
                        fontWeight: FontWeight.w400,
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
