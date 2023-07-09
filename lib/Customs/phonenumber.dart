import 'package:craft_my_plate/constants.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneField extends StatefulWidget {
  @override
  _PhoneFieldState createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  String _selectedCountryCode = "1"; // Initial country code
  String phoneNumber = "";

  void _selectCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country country) {
        setState(() {
          _selectedCountryCode = country.phoneCode;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,

      child: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              setState(() {
                phoneNumber = value;
              });
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: gray_9, width: 1),
                    borderRadius: BorderRadius.circular(6)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: gray_9, width: 1),
                    borderRadius: BorderRadius.circular(6)),
                labelText: "Enter Phone Number",
                labelStyle: GoogleFonts.getFont(fontFamily,
                    fontWeight: FontWeight.w400,
                    fontSize: size_5,
                    color: gray_12),
                floatingLabelStyle: GoogleFonts.getFont(fontFamily,
                    fontWeight: FontWeight.w400,
                    fontSize: size_7,
                    color: gray_12),
                prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: GestureDetector(
                      onTap: () {
                        _selectCountry();
                      },
                      child: Text(
                        "+$_selectedCountryCode",
                        style: GoogleFonts.getFont(fontFamily,
                            fontWeight: FontWeight.w400,
                            fontSize: size_5,
                            color: Colors.black),
                      )),
                )),
          )
        ],
      ),
    );
  }
}
