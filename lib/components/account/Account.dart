import 'package:flutter/material.dart';
import 'package:freefund_mobile/components/account/components/Details.dart';
import 'package:freefund_mobile/components/account/components/down_elem.dart';
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
            child: Expanded(
          flex: 2,
          child: Column(
            children: [
              details(context),

              // Divider(),
              titleDivider(context, "Downloads", "donation"),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    elem("All Donations"), //from down_elem.dart
                    elem("All Events"),
                  ]),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [elem("Raised Funds"), elem("Organized Events")]),

              // Dcards(),
              // Dcards(),
              // Dcards(),
            ],
          ),
        )),
      ),
    );
  }
}
