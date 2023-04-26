import 'package:flutter/material.dart';

class Values {
  // textStyle in buttons
  TextStyle textStyleLegend(FontWeight fWeight, double fontSize) =>
      TextStyle(fontWeight: fWeight, fontSize: fontSize);

  //InputDecoration for decorating input fields
  inputField(String text_, IconData icon_) {
    return InputDecoration(
        suffixIcon: Icon(icon_),
        hintText: text_,
        border: const OutlineInputBorder());
  }
}
