import 'package:flutter/material.dart';

Widget details(context) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          foregroundImage: NetworkImage(
              "https://qph.cf2.quoracdn.net/main-qimg-ef5af00451130c0764042f87eb9d2481-lq"),
          backgroundImage: NetworkImage(
              "https://qph.cf2.quoracdn.net/main-qimg-ef5af00451130c0764042f87eb9d2481-lq"),
          radius: 80,
        ),
        const Text(
          "Utsab kafle",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("9825191532"),
            Text('     '),
            Text("utshubkaphle@gmail.com")
          ],
        ),
        SizedBox(
          height: 2,
          width: MediaQuery.of(context).size.width - 100,
          child: const Divider(
            height: 2,
            thickness: 2,
          ),
        ),
        SizedBox(
            // height: 50,
            child: Column(
          children: [
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: OutlinedButton(
                        onPressed: () {
                          // Clipboard.setData(
                          //     const ClipboardData(text: "9825915344"));
                        },
                        onLongPress: () {
                          // Clipboard.setData(
                          //     const ClipboardData(text: "9825915344"));
                        },
                        child: const Row(
                          children: [Text("esewa "), Text("9825915344")],
                        )),
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text("khalti "),
                          Text("32322323"),
                        ],
                      )),
                ]),
          ],
        ))
      ]);
}
