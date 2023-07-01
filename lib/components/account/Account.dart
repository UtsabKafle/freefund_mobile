import 'package:flutter/material.dart';
import 'package:freefund_mobile/components/account/components/Details.dart';
import 'package:freefund_mobile/components/bottomNav/bottomNav.dart';
import 'package:freefund_mobile/components/account/components/t_card.dart';
import 'package:freefund_mobile/components/home/components/titleDivider.dart';
import 'components/dcards.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Dcards(),
                  Dcards(),
                  // Dcards(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
