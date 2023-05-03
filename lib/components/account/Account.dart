import 'package:flutter/material.dart';
import 'package:freefund_mobile/components/bottomNav/bottomNav.dart';

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
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              child: Image.network(
                                "https://qph.cf2.quoracdn.net/main-qimg-ef5af00451130c0764042f87eb9d2481-lq",
                                height: 200,
                                width: 200,
                              ),
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
                              child: Divider(
                                height: 2,
                                thickness: 2,
                              ),
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
