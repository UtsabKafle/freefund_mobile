import 'package:flutter/material.dart';

Widget searchBar() => const SizedBox(
    width: 300,
    height: 55,
    child: Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        autofocus: false,
        style: TextStyle(
          fontSize: 14,
        ),
        decoration: InputDecoration(
            icon: Icon(Icons.search),
            hintText: "search",
            border: OutlineInputBorder()),
      ),
    ));
