<<<<<<< HEAD
import 'components/auth/Login.dart';
=======
// import 'components/auth/login.dart';
>>>>>>> 9444663b6356d0a869a14efc77fdbc1111daa107
import 'package:flutter/material.dart';
// import 'components/auth/SignUpActivity.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'secret.dart';
import 'components/home/home.dart';

Future<void> main() async {
<<<<<<< HEAD
  await Supabase.initialize(
      url: Secret.supabaseUrl,
      anonKey: Secret.supabaseAnnonKey
  );

  runApp(
    MaterialApp(
      home: SignUpActivity()
    ),
  );

}

// final supabase = Supabase.instance.client;
=======
  // await Supabase.initialize(url: Secret.sb_url, anonKey: Secret.anon_key);

  runApp(Home());
}

// final supabase = Supabase.instance.client;
>>>>>>> 9444663b6356d0a869a14efc77fdbc1111daa107
