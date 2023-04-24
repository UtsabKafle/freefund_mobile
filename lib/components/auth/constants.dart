import 'package:flutter/material.dart';

class Values {
  // textStyle in buttons
  final TextStyle textStyleLegend =
      const TextStyle(fontWeight: FontWeight.normal);

  //InputDecoration for decorating input fields
  inputField(String text_, IconData icon_) {
    return InputDecoration(
        suffixIcon: Icon(icon_),
        hintText: text_,
        border: const OutlineInputBorder());
  }
}

void main() {
  var me = Values();
}
