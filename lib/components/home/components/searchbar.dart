import 'package:flutter/material.dart';

Widget searchBar() {
  return SizedBox(
    width: 300,
    height: 55,
    child: Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        autofocus: false,
        style: searchTextStyle(),
        decoration: searchInputDecoration(),
      ),
    ),
  );
}

TextStyle searchTextStyle() {
  return TextStyle(
    fontSize: 14,
    // Customize other text style properties here
  );
}

InputDecoration searchInputDecoration() {
  return InputDecoration(
    icon: Icon(Icons.search),
    hintText: "Search",
    border: OutlineInputBorder(),
    // Customize other input decoration properties here
  );
}





///////////////////////////////////////////
// import 'package:flutter/material.dart';

// Widget searchBar() => const SizedBox(
//     width: 300,
//     height: 55,
//     child: Padding(
//       padding: EdgeInsets.all(8),
//       child: TextField(
//         autofocus: false,
//         style: TextStyle(
//           fontSize: 14,
//         ),
//         decoration: InputDecoration(
//             icon: Icon(Icons.search),
//             hintText: "search",
//             border: OutlineInputBorder()),
//       ),
//     ));
