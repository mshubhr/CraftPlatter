import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:craft_my_plate/constants.dart';

var code = "";

class PinInput extends StatelessWidget {
  PinInput({required this.first, required this.last});
  final bool first, last;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            spreadRadius: 0,
            blurRadius: 24,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: TextField(
        onChanged: (value) {
          code = value;
          //autofill
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.length == 0 && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        cursorColor: primary,
        decoration: const InputDecoration(
          filled: true,
          fillColor: white2,
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: gray_10),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: gray_10),
          ),
        ),
      ),
    );
  }
}
