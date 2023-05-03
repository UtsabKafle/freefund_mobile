import 'components/auth/login.dart';
import 'package:flutter/material.dart';
import 'components/auth/SignUpActivity.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'secret.dart';
import 'components/home/home.dart';
import 'components/account/Account.dart';

Future<void> main() async {
  // await Supabase.initialize(
  //     url: Secret.supabaseUrl,
  //     anonKey: Secret.supabaseAnnonKey
  // );

  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      "/home": (context) => const Home(),
      '/account': (context) => Login(),
      '/signup': (context) => SignUpActivity(),
      '/profile': (context) => Account(),
    },
  ));
}

// final supabase = Supabase.instance.client;
  // await Supabase.initialize(url: Secret.sb_url, anonKey: Secret.anon_key);

//   runApp(Home());
// }

// final supabase = Supabase.instance.client;
