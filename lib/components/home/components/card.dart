// import 'dart:js';

import 'package:flutter/material.dart';

Widget cardElement(context) {
  return SizedBox(
    height: 130,
    width: 250,
    child: Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            // 'https://mythgyaan.com/wp-content/uploads/2018/01/gita-880x575.jpg',
            'https://www.smilefoundationindia.org/blog/wp-content/uploads/2023/01/Celebrating-Swami-Vivekananda-Jayanti-as-National-Youth-Day-768x768.jpg',
            fit: BoxFit.fill,
            // height: 200,
            // width: 200,
          ),
          //https://www.smilefoundationindia.org/blog/wp-content/uploads/2023/01/Celebrating-Swami-Vivekananda-Jayanti-as-National-Youth-Day-768x768.jpg

          const Text(
            // textAlign: TextAlign.center,
            "this is a sample text for the application. Also this is good. peice of shit - Utsab Kafle",
            softWrap: true,
          ),
          const Row(
            children: [Text('Rs.200 out of Rs.1000')],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/dona");
                  },
                  child: const Text("Donate")),
              OutlinedButton(onPressed: () {}, child: const Text("Share"))
            ],
          )
        ],
      ),
    ),
  );
}
