import 'package:flutter/material.dart';

Widget titleDivider(context, String title, String type) {
  Color colo() {
    if (type == 'donation') {
      return const Color.fromARGB(255, 12, 184, 219);
    }
    if (type == "event") {
      return const Color.fromARGB(133, 228, 20, 30);
    } else {
      return Colors.black54;
    }
  }

  return Row(
    children: [
      SizedBox(
        width: 25,
        child: Divider(
          thickness: 8,
          // height: 0,
          endIndent: 3,
          color: colo(),
        ),
      ),
      SizedBox(
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width - 100,
        child: const Divider(
          indent: 1,
          height: 2,
          color: Color.fromARGB(255, 56, 62, 63),
          thickness: 2,
        ),
      )
    ],
  );
}
