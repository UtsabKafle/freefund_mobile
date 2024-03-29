// import 'dart:js';

// import 'dart:js';

import 'package:freefund_mobile/components/fundRaise/RaisedFundFormActivity.dart';

import 'components/donation/DonationActivity.dart';
import 'components/auth/login.dart';
import 'package:flutter/material.dart';
import 'components/auth/SignUpActivity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'secret.dart';
import 'components/home/home.dart';
import 'components/account/Account.dart';

Future<void> main() async {
  await Supabase.initialize(url: Secret.sb_url, anonKey: Secret.anon_key);
  final supabase = Supabase.instance.client;
  runApp(
    MaterialApp(
      initialRoute: '/home',
      routes: {
        "/home": (context) => Home(),
        '/account': (context) => Login(),
        '/signup': (context) => const SignUpActivity(),
        '/profile': (context) => const Account(),
        '/dona': (context) => DonationActivity(),
        '/raise': (context) => const RaisedFundFormActivity()
      },
    ),
  );
}

// final supabase = Supabase.instance.client;
  // await Supabase.initialize(url: Secret.sb_url, anonKey: Secret.anon_key);

//   runApp(Home());
// }


