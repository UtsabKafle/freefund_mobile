import 'components/auth/login.dart';
import 'package:flutter/material.dart';
import 'components/auth/SignUpActivity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'secret.dart';

Future<void> main() async {
  await Supabase.initialize(
      url: Secret.supabaseUrl, anonKey: Secret.supabaseAnnonKey);
  runApp(Login());
}

final supabase = Supabase.instance.client;
