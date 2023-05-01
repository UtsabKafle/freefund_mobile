import 'package:freefund_mobile/DonationActivity.dart';
import 'package:freefund_mobile/components/auth/SignUpActivity.dart';

import 'components/auth/Login.dart';
// import 'components/auth/login.dart';
import 'package:flutter/material.dart';
// import 'components/auth/SignUpActivity.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'secret.dart';
import 'components/home/home.dart';

void main() {
  runApp(SignUpActivity());
}

// Future<void> main() async {
//   await Supabase.initialize(
//       url: Secret.supabaseUrl,
//       anonKey: Secret.supabaseAnnonKey
//   );
//
//   runApp(
//     MaterialApp(
//       home: SignUpActivity()
//     ),
//   );


// final supabase = Supabase.instance.client;
  // await Supabase.initialize(url: Secret.sb_url, anonKey: Secret.anon_key);

//   runApp(Home());
// }

// final supabase = Supabase.instance.client;
