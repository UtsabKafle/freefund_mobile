import 'package:flutter/material.dart';
import 'package:freefund_mobile/components/auth/Login.dart';
import 'package:freefund_mobile/components/bottomNav/bottomNav.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Future<void> main() async {
//   await Supabase.initialize(
//       url: "https://exeabphoiyapqqvxxedb.supabase.co",
//       anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV4ZWFicGhvaXlhcHFxdnh4ZWRiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODIwNTgzNTIsImV4cCI6MTk5NzYzNDM1Mn0.HnEXoU1E7NM7SMLyraR5fikiygzPNAOiHMnvuJCHev0"
//   );
//
//   runApp(SignUpActivity());
// }


class SignUpActivity extends StatelessWidget {
  const SignUpActivity({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var email = TextEditingController();
    var password = TextEditingController();
    var name = TextEditingController();

    var progressBarState = new GlobalKey<ScaffoldState>();


// Get a reference your Supabase client
    final supabase = Supabase.instance.client;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(218, 245, 255, 50),
        bottomNavigationBar: bottomNav(context),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up to Continue",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 20.0,
                    // backgroundImage: AssetImage("fb_icon.svg"),
                  ),
                  CircleAvatar(
                    radius: 20.0,
                    // backgroundImage: AssetImage("google_icon.svg"),
                  )
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 100.0,
                    height: 5.0,
                    child: Divider(
                      thickness: 2.0,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text("OR"),
                  SizedBox(
                    width: 8.0,
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 5.0,
                    child: Divider(
                      thickness: 2.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: TextField(
                  controller: name,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Enter Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      hintText: "Enter E-mail",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      hintText: "Enter Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              ElevatedButton(
                  onPressed: () async {

                    // progressBarState.currentState.show

                    final AuthResponse res = await supabase.auth.signUp(
                      email: email.text,
                      password: password.text,
                      data: {'username': '$name'},
                    );
                    final Session? session = res.session;
                    final User? user = res.user;

                    print("session: $session");

                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));


                  },
                  child: const Text("Sign Up")
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an Account, "),
                  GestureDetector(
                    onTap: () {
                      print("text clicked");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      // Navigator.pop(context);
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

// class TextInputField extends StatelessWidget {
//
//   TextInputField(String passwordController, IconData icon, String hint, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//       child: TextField(
//         controller: password,
//         obscureText: true,
//         decoration: InputDecoration(
//             prefixIcon: const Icon(Icons.password),
//             hintText: "Enter Password",
//             border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0))),
//       ),
//     ),
//
//   }
//
// }