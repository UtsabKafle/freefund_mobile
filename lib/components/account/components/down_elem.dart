import 'package:flutter/material.dart';

Widget elem(String text) {
  return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(onPressed: () {}, child: Text(text)),
      ));
}
