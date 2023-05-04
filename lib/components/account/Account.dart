import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freefund_mobile/components/bottomNav/bottomNav.dart';
import 'package:freefund_mobile/components/home/components/card.dart';
import 'package:freefund_mobile/components/home/components/titleDivider.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: bottomNav(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
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
                            Row(
                              children: const [
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
                                height: 50,
                                child: Column(
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8),
                                            child: OutlinedButton(
                                                onPressed: () {
                                                  Clipboard.setData(
                                                      const ClipboardData(
                                                          text: "9825915344"));
                                                },
                                                onLongPress: () {
                                                  Clipboard.setData(
                                                      const ClipboardData(
                                                          text: "9825915344"));
                                                },
                                                child: Row(
                                                  children: const [
                                                    Text("esewa "),
                                                    Text("9825915344")
                                                  ],
                                                )),
                                          ),
                                          OutlinedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: const [
                                                  Text("khalti "),
                                                  Text("32322323"),
                                                ],
                                              )),
                                        ]),
                                  ],
                                )),
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    cardElement(),
                                    cardElement(),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
