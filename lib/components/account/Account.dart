import 'package:flutter/material.dart';
import 'package:freefund_mobile/components/account/components/Details.dart';
import 'package:freefund_mobile/components/bottomNav/bottomNav.dart';
import 'package:freefund_mobile/components/account/components/t_card.dart';
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
              details(context),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      //for posts

                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Text("Raised"),
                        cardElement(),
                        cardElement(),
                        cardElement()
                      ],
                    ),
                    Column(
                      //for donations
                      children: [
                        Text("Donated"),
                        cardElement(),
                        cardElement(),
                        cardElement(),
                      ],
                    ),
                    Column(
                      children: [Text("Events"), cardElement(), cardElement()],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
