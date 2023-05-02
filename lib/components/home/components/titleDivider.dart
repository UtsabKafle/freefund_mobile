import 'package:flutter/material.dart';

Widget titleDivider(context, String title) {
  return Row(
    children: [
      const SizedBox(
        width: 20,
        child: Divider(
          thickness: 2,
          height: 2,
          endIndent: 3,
          color: Color.fromARGB(255, 134, 129, 129),
        ),
      ),
      SizedBox(
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width - 100,
        child: const Divider(
          indent: 1,
          height: 2,
          color: Color.fromARGB(255, 134, 129, 129),
          thickness: 2,
        ),
      )
    ],
  );
}
